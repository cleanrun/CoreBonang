//
//  Bonang2DVC.swift
//  CoreBonang
//
//  Created by cleanmac-ada on 20/04/22.
//

import UIKit
import AVFoundation

class Bonang2DVC: UIViewController {
    
    private var infoLabel: UILabel!
    private var bonangImage: UIImageView!
    
    private var topGongContainerStackView: UIStackView!
    private var firstTopGongView: UIView!
    private var secondTopGongView: UIView!
    private var thirdTopGongView: UIView!
    private var fourthTopGongView: UIView!
    private var fifthTopGongView: UIView!
    private var sixthTopGongView: UIView!
    private var seventhTopGongView: UIView!
    
    private var bottomGongContainerStackView: UIStackView!
    private var firstBottomGongView: UIView!
    private var secondBottomGongView: UIView!
    private var thirdBottomGongView: UIView!
    private var fourthBottomGongView: UIView!
    private var fifthBottomGongView: UIView!
    private var sixthBottomGongView: UIView!
    private var seventhBottomGongView: UIView!
    
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
        title = "See Bonang in 2D"
    }
    
    private func commonInit() {
        infoLabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.font = .boldSystemFont(ofSize: 20)
        infoLabel.text = "Tap on any Gong of the Bonang to play the sounds"
        view.addSubview(infoLabel)
        
        bonangImage = UIImageView()
        bonangImage.translatesAutoresizingMaskIntoConstraints = false
        bonangImage.image = UIImage(named: AssetName.IMG_BONANG_IMAGE)
        bonangImage.contentMode = .scaleAspectFit
        view.addSubview(bonangImage)
        
        topGongContainerStackView = UIStackView()
        topGongContainerStackView.translatesAutoresizingMaskIntoConstraints = false
        topGongContainerStackView.axis = .horizontal
        topGongContainerStackView.distribution = .fillEqually
        topGongContainerStackView.spacing = 0
        view.addSubview(topGongContainerStackView)
        
        firstTopGongView = UIView()
        firstTopGongView.translatesAutoresizingMaskIntoConstraints = false
        firstTopGongView.backgroundColor = .clear
        topGongContainerStackView.addArrangedSubview(firstTopGongView)
        let firstTopTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        firstTopGongView.addGestureRecognizer(firstTopTap)
        
        secondTopGongView = UIView()
        secondTopGongView.translatesAutoresizingMaskIntoConstraints = false
        secondTopGongView.backgroundColor = .clear
        topGongContainerStackView.addArrangedSubview(secondTopGongView)
        let secondTopTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        secondTopGongView.addGestureRecognizer(secondTopTap)
        
        thirdTopGongView = UIView()
        thirdTopGongView.translatesAutoresizingMaskIntoConstraints = false
        thirdTopGongView.backgroundColor = .clear
        topGongContainerStackView.addArrangedSubview(thirdTopGongView)
        let thirdTopTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        thirdTopGongView.addGestureRecognizer(thirdTopTap)
        
        fourthTopGongView = UIView()
        fourthTopGongView.translatesAutoresizingMaskIntoConstraints = false
        fourthTopGongView.backgroundColor = .clear
        topGongContainerStackView.addArrangedSubview(fourthTopGongView)
        let fourthTopTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        fourthTopGongView.addGestureRecognizer(fourthTopTap)
        
        fifthTopGongView = UIView()
        fifthTopGongView.translatesAutoresizingMaskIntoConstraints = false
        fifthTopGongView.backgroundColor = .clear
        topGongContainerStackView.addArrangedSubview(fifthTopGongView)
        let fifthTopTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        fifthTopGongView.addGestureRecognizer(fifthTopTap)
        
        sixthTopGongView = UIView()
        sixthTopGongView.translatesAutoresizingMaskIntoConstraints = false
        sixthTopGongView.backgroundColor = .clear
        topGongContainerStackView.addArrangedSubview(sixthTopGongView)
        let sixthTopTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        sixthTopGongView.addGestureRecognizer(sixthTopTap)
        
        seventhTopGongView = UIView()
        seventhTopGongView.translatesAutoresizingMaskIntoConstraints = false
        seventhTopGongView.backgroundColor = .clear
        topGongContainerStackView.addArrangedSubview(seventhTopGongView)
        let seventhTopTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        seventhTopGongView.addGestureRecognizer(seventhTopTap)
        
        bottomGongContainerStackView = UIStackView()
        bottomGongContainerStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomGongContainerStackView.axis = .horizontal
        bottomGongContainerStackView.distribution = .fillEqually
        bottomGongContainerStackView.spacing = 0
        view.addSubview(bottomGongContainerStackView)
        
        firstBottomGongView = UIView()
        firstBottomGongView.translatesAutoresizingMaskIntoConstraints = false
        firstBottomGongView.backgroundColor = .clear
        bottomGongContainerStackView.addArrangedSubview(firstBottomGongView)
        let firstBottomTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        firstBottomGongView.addGestureRecognizer(firstBottomTap)
        
        secondBottomGongView = UIView()
        secondBottomGongView.translatesAutoresizingMaskIntoConstraints = false
        secondBottomGongView.backgroundColor = .clear
        bottomGongContainerStackView.addArrangedSubview(secondBottomGongView)
        let secondBottomTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        secondBottomGongView.addGestureRecognizer(secondBottomTap)
        
        thirdBottomGongView = UIView()
        thirdBottomGongView.translatesAutoresizingMaskIntoConstraints = false
        thirdBottomGongView.backgroundColor = .clear
        bottomGongContainerStackView.addArrangedSubview(thirdBottomGongView)
        let thirdBottomTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        thirdBottomGongView.addGestureRecognizer(thirdBottomTap)
        
        fourthBottomGongView = UIView()
        fourthBottomGongView.translatesAutoresizingMaskIntoConstraints = false
        fourthBottomGongView.backgroundColor = .clear
        bottomGongContainerStackView.addArrangedSubview(fourthBottomGongView)
        let fourthBottomTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        fourthBottomGongView.addGestureRecognizer(fourthBottomTap)
        
        fifthBottomGongView = UIView()
        fifthBottomGongView.translatesAutoresizingMaskIntoConstraints = false
        fifthBottomGongView.backgroundColor = .clear
        bottomGongContainerStackView.addArrangedSubview(fifthBottomGongView)
        let fifthBottomTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        fifthBottomGongView.addGestureRecognizer(fifthBottomTap)
        
        sixthBottomGongView = UIView()
        sixthBottomGongView.translatesAutoresizingMaskIntoConstraints = false
        sixthBottomGongView.backgroundColor = .clear
        bottomGongContainerStackView.addArrangedSubview(sixthBottomGongView)
        let sixthBottomTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        sixthBottomGongView.addGestureRecognizer(sixthBottomTap)
        
        seventhBottomGongView = UIView()
        seventhBottomGongView.translatesAutoresizingMaskIntoConstraints = false
        seventhBottomGongView.backgroundColor = .clear
        bottomGongContainerStackView.addArrangedSubview(seventhBottomGongView)
        let seventhBottomTap = UITapGestureRecognizer(target: self, action: #selector(playGongSounds(_:)))
        seventhBottomGongView.addGestureRecognizer(seventhBottomTap)
        
        NSLayoutConstraint.activate([
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            bonangImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bonangImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            bonangImage.heightAnchor.constraint(equalToConstant: 200),
            bonangImage.widthAnchor.constraint(equalToConstant: 600),
            
            topGongContainerStackView.leadingAnchor.constraint(equalTo: bonangImage.leadingAnchor, constant: 115),
            topGongContainerStackView.trailingAnchor.constraint(equalTo: bonangImage.trailingAnchor, constant: -110),
            topGongContainerStackView.topAnchor.constraint(equalTo: bonangImage.topAnchor, constant: 50),
            topGongContainerStackView.heightAnchor.constraint(equalToConstant: 40),
            
            bottomGongContainerStackView.leadingAnchor.constraint(equalTo: bonangImage.leadingAnchor, constant: 80),
            bottomGongContainerStackView.trailingAnchor.constraint(equalTo: bonangImage.trailingAnchor, constant: -80),
            bottomGongContainerStackView.topAnchor.constraint(equalTo: topGongContainerStackView.bottomAnchor, constant: 4),
            bottomGongContainerStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func playGongSounds(_ sender: UIGestureRecognizer) {
        switch sender.view {
        case firstTopGongView:
            playSound(path: .bbpl4h)
        case secondTopGongView:
            playSound(path: .bbpl6h)
        case thirdTopGongView:
            playSound(path: .bbpl5h)
        case fourthTopGongView:
            playSound(path: .bbpl3h)
        case fifthTopGongView:
            playSound(path: .bbpl2h)
        case sixthTopGongView:
            playSound(path: .bbpl1)
        case seventhTopGongView:
            playSound(path: .bbpl7)
        case firstBottomGongView:
            playSound(path: .bbpl7h)
        case secondBottomGongView:
            playSound(path: .bbpl1h)
        case thirdBottomGongView:
            playSound(path: .bbpl2)
        case fourthBottomGongView:
            playSound(path: .bbpl3)
        case fifthBottomGongView:
            playSound(path: .bbpl5)
        case sixthBottomGongView:
            playSound(path: .bbpl6)
        case seventhBottomGongView:
            playSound(path: .bbpl4)
        default:
            break
        }
    }
    
    private func playSound(path: SoundPath) {
        if let url = Bundle.main.url(forResource: path.toAssetName(), withExtension: AssetName.SOUND_EXTENSION) {
            audioPlayer = try! AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        }
    }
}
