//
//  BonangARVC.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 22/04/22.
//

import UIKit
import SceneKit
import ARKit
import AVFoundation

class BonangARVC: UIViewController {
    
    private var sceneView: ARSCNView!
    private var infoLabel: UILabel!
    
    private var isModelAppeared: Bool = false
    private var audioPlayer: AVAudioPlayer!
    
    init() {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "See Bonang in AR"
        
        sceneView.delegate = self
        sceneView.autoenablesDefaultLighting = true
        
        let scene = SCNScene()
        sceneView.scene = scene
        
        registerGestureRecognizer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        sceneView.session.pause()
    }
    
    private func commonInit() {
        sceneView = ARSCNView()
        sceneView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sceneView)
        
        infoLabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.font = .boldSystemFont(ofSize: 20)
        infoLabel.text = "Looking for a surface to put the Bonang..."
        view.addSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sceneView.topAnchor.constraint(equalTo: view.topAnchor),
            sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
    }
    
    private func registerGestureRecognizer() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureAction(_:)))
        sceneView.addGestureRecognizer(tapGesture)
        
//        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchGestureAction(_:)))
//        sceneView.addGestureRecognizer(pinchGesture)
    }

    @objc private func tapGestureAction(_ gesture: UITapGestureRecognizer) {
        guard let view = gesture.view as? ARSCNView else {
            return
        }
        
        if !isModelAppeared {
            view.scene.rootNode.enumerateChildNodes { node, stop in
                node.removeFromParentNode()
            }
            
            let touch = gesture.location(in: view)
            let results = view.hitTest(touch, types: .existingPlane)
            if let hitTest = results.first {
                guard let scene = SCNScene(named: AssetName.DAE_BONANG_MODEL) else {
                    return
                }
                let wrapperNode = SCNNode()
                for child: SCNNode in scene.rootNode.childNodes {
                    wrapperNode.addChildNode(child)
                }
                
                wrapperNode.position = SCNVector3(hitTest.worldTransform.columns.3.x, hitTest.worldTransform.columns.3.y, hitTest.worldTransform.columns.3.z)
                wrapperNode.scale = SCNVector3((wrapperNode.scale.x * 0.1), (wrapperNode.scale.y * 0.1), (wrapperNode.scale.z * 0.1))
                
                sceneView.scene.rootNode.addChildNode(wrapperNode)
                
                isModelAppeared = true
                infoLabel.text = "Great! Tap on any Gong of the Bonang to play the sounds"
            }
        } else {
            let touch = gesture.location(in: view)
            let hitResults = view.hitTest(touch, options: [:])

            if hitResults.count > 0 {
                let result: SCNHitTestResult = hitResults[0]
                if let nodeName: String = result.node.name {
                    if let gongName = GongName(rawValue: nodeName) {
                        playGongSounds(gongName)
                    }
                }
            }
        }
    }
    
    @objc private func pinchGestureAction(_ gesture: UIPinchGestureRecognizer) {
        if gesture.state == .changed {
            guard let view = gesture.view as? ARSCNView else {
                return
            }
            
            let touch = gesture.location(in: view)
            let results = sceneView.hitTest(touch, options: nil)
            if let hitTest = results.first {
                let node = hitTest.node
                let scaleX = Float(gesture.scale) * node.scale.x
                let scaleY = Float(gesture.scale) * node.scale.y
                let scaleZ = Float(gesture.scale) * node.scale.z
                node.scale = SCNVector3(scaleX, scaleY, scaleZ)
                gesture.scale = 1
            }
        }
    }
    
    private func playGongSounds(_ gong: GongName) {
        switch gong {
        case .kethuk:
            playSound(path: .bbpl2)
        case .kethuk1:
            playSound(path: .bbpl7h)
        case .kethuk2:
            playSound(path: .bbpl1)
        case .kethuk3:
            playSound(path: .bbpl3)
        case .kethuk4:
            playSound(path: .bbpl5)
        case .kethuk5:
            playSound(path: .bbpl6)
        case .kethuk6:
            playSound(path: .bbpl4)
        case .kempyang:
            playSound(path: .bbpl3h)
        case .kempyang1:
            playSound(path: .bbpl2h)
        case .kempyang2:
            playSound(path: .bbpl1h)
        case .kempyang3:
            playSound(path: .bbpl5h)
        case .kempyang4:
            playSound(path: .bbpl6h)
        case .kempyang5:
            playSound(path: .bbpl4h)
        case .kempyang6:
            playSound(path: .bbpl7)
        }
    }
    
    private func playSound(path: SoundPath) {
        if let url = Bundle.main.url(forResource: path.toAssetName(), withExtension: AssetName.SOUND_EXTENSION) {
            audioPlayer = try! AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        }
    }
}

extension BonangARVC: ARSCNViewDelegate {
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        if anchor is ARPlaneAnchor {
            DispatchQueue.main.async {
                self.infoLabel.text = "Surface found! Tap anywhere to put the Bonang"
            }
        }
    }
}
