//
//  AssetName.swift
//  CoreGamelan
//
//  Created by cleanmac-ada on 20/04/22.
//

import Foundation

struct AssetName {
    static let IMG_BONANG_VECTOR = "bonang-vector"
    static let IMG_BONANG_IMAGE = "bonang-image"
    static let IMG_GAMELAN_1 = "gamelan-1"
    static let IMG_CULTURE_1 = "culture-1"
    static let IMG_BONANG_PARTS = "bonang-parts"
    
    static let DAE_BONANG_MODEL = "bonang-model.scn"
    
    static let SOUND_EXTENSION = "wav"
}

enum SoundPath: String {
    case bbpl1 = "bbpl1"
    case bbpl1h = "bbpl1h"
    case bbpl2 = "bbpl2"
    case bbpl2h = "bbpl2h"
    case bbpl3 = "bbpl3"
    case bbpl3h = "bbpl3h"
    case bbpl4 = "bbpl4"
    case bbpl4h = "bbpl4h"
    case bbpl5 = "bbpl5"
    case bbpl5h = "bbpl5h"
    case bbpl6 = "bbpl6"
    case bbpl6h = "bbpl6h"
    case bbpl7 = "bbpl7"
    case bbpl7h = "bbpl7h"
    
    func toAssetName() -> String {
        "bonang-\(self.rawValue)"
    }
}

enum GongName: String {
    case kempyang = "Kempyang"
    case kempyang1 = "Kempyang-001"
    case kempyang2 = "Kempyang-002"
    case kempyang3 = "Kempyang-003"
    case kempyang4 = "Kempyang-004"
    case kempyang5 = "Kempyang-005"
    case kempyang6 = "Kempyang-006"
    case kethuk = "Kethuk"
    case kethuk1 = "Kethuk-001"
    case kethuk2 = "Kethuk-002"
    case kethuk3 = "Kethuk-003"
    case kethuk4 = "Kethuk-004"
    case kethuk5 = "Kethuk-005"
    case kethuk6 = "Kethuk-006"
}

struct CreditLink {
    static let WIKIPEDIA_MUSIC_OF_INDONESIA = "https://en.wikipedia.org/wiki/Music_of_Indonesia"
    static let ASIASOUND = "https://web.archive.org/web/20110904123320/http://www.asiasound.com/content/Learn/Timelines/indonesia"
    static let WIKIPEDIA_BONANG = "https://en.wikipedia.org/wiki/Bonang"
    static let INSTRUMENTS_OF_THE_WORLD = "http://www.instrumentsoftheworld.com/instrument/14-Bonang.html"
    static let NMMUSD = "http://collections.nmmusd.org/Gamelan/9875/BonangPanembung9875.html"
    
    static let CREDIT_GAMELAN_1 = "Photo by Aditya Nara on Unsplash"
    static let CREDIT_CULTURE_1 = "Photo by Ahlal Mufti on Medium"
    static let CREDIT_BONANG_PARTS = "Photo taken from InstrumentsOfTheWorld"
}

struct AboutIndonesianInstrumentsDetails {
    static let DETAILS = """
The music of Indonesia its cultural diversity, the local musical creativity, as well as subsequent foreign musical influences that shaped contemporary music maybe scenes of Indonesia. Nearly thousands of Indonesian islands having its own cultural and artistic history and character. This results in hundreds of different forms of music, which often accompanies by dance and theatre.

The musical identity of Indonesia as we know it today began as the Bronze Age culture migrated to the Indonesian archipelago in the 2nd-3rd c BC through Vietnam, where Bronze and Iron Age cultures were already at advanced stages of development. Instruments: bronze kettledrum (believed to have magical power) and gong-chimes.

Traditional musics of Indonesian tribes often uses percussion instruments, especially gendang (drums) and gongs. Some of them developed elaborate and distinctive musical instruments, such as sasando string instrument of Rote island, angklung of Sundanese people, and the complex and sophisticated gamelan orchestra of Java and Bali.
"""
}

struct AboutGamelanDetails {
    static let ORIGINS_TITLE = "Origins of Gamelan"
    static let ORIGINS_DETAIL = """
The gong-chime culture of Indonesia evolved over 2000 years to become today's ensemble of tuned percussion instruments comprised of gongs, metallophones and drums. Larger gamelans are made of bronze, iron or brass, with ornately carved wooden frames painted in red and gold. Legend says that the first gamelan was created by the god-king Sang Hyang Guru who ruled in the 3rd c. Hard evidence tells the first had a 3-note tuning, and was used in 347 AD but possibly existed before that date in the 2nd or 1st c BC. There are few, extant written records, but information can be gathered from bas reliefs and the remains of ancient bronze drums that came from China, mainland Southeast Asia and India. The first reference to gongs in literature occurred in the 10th-c; depictions of the instruments were found in the 14th-c in East Java. Over the centuries, the relative pitch tended to rise, and the size of the instruments has become smaller, while the number of instruments used in ensembles has increased, which has been used by some scholars to determine the age and origins of the gamelan. Prior to the 16th c, gamelan were classified according to their use: loud for outdoor functions, soft for indoor occasions. There is some evidence that the two types of ensembles were combined by the 8-9th c, but the modern ensemble did not evolve until after the 16th c.

"""
    
    static let YOGYAKARTA_TITLE = "Yogyakarta, The Gamelan of the Kraton"
    static let YOGYAKARTA_DETAIL = """
Distinguished as a contemporary center of higher education in Indonesia and a major tourist destination in central Java, Yogyakarta is also a center of excellence for traditional Javanese culture. Kraton Ngayogyakarta Hadiningrat, the palatial residence of the current Sultan of Yogyakarta and his ancestors, has existed as a center of cultural excellence since1755 and has been marked by power struggles between central Javanese nobility and from the Dutch East India Company. Over the decades, the Dutch took advantage of various political disruptions to further their control of the courts and advance their economic holdings, but allowed the traditional Javanese feudal autocracy to retain their high social position under colonial administration. Palace life was rich, but with the outbreak of WW II, the arrangement was shattered and reduced to an instrument for preserving traditional ceremonies and rituals during the Japanese occupation of 1942-45.

"""
    
    static let PALACE_TITLE = "The Music of the Palace Since the Indonesian Revolution 1945-49"
    static let PALACE_DETAIL = """
The Kraton Ngayogyakarta Hadiningrat continues to perpetuate traditional Javanese ceremonies and rituals, performed on the indigenous Javanese gamelan orchestra. Performing arts at the palace are always part of some extra-musical activity marking either an event, such as marriage or circumcision of a royal family member, or the recurrence of an important date, such as religious holy days, the birthday of the Sultan or the founding of thekingdom. The Kraton Yogyakarta Gamelan is primarily robust and loud (soran). The gendhing repertoire of marches (mares) or gendhing gati (important pieces) are unique to Yogyakarta, and the use of western snare drums and brass instruments gives testimony to the long period of contact between the Javanese and the Dutch. The palace gamelan is physically impressive with a potential to broadcast great power, but beyond their immediate visual and aural impact, they have associations with the Sultan and with supernatural powers that contribute to the sacred aura of the instruments.

Numerous regional styles of gamelan performance, equal to the majesty of Yogyakarta, exist on the island of Java. The gamelan salendro from Sunda in Western Java accompanies puppet theater and dance; only a few of the many other Sundanese ensembles are the popular gamelan degung and the ethereally beautiful cianjuran style (Tembang Sunda) of epic poetry sung to the accompaniment of kacapi (zither) and suling (bamboo flute).

"""
}

struct AboutBonangDetail {
    static let BONANG_DETAIL = """
The bonang is an Indonesian musical instrument used in the Javanese gamelan. It is a collection of small gongs (sometimes called "kettles" or "pots") placed horizontally onto strings in a wooden frame (rancak), either one or two rows wide. All of the kettles have a central boss, but around it the lower-pitched ones have a flattened head, while the higher ones have an arched one. Each is tuned to a specific pitch in the appropriate scale; thus there are different bonang for pelog and slendro. They are typically hit with padded sticks (tabuh). This is similar to the other cradled gongs in the gamelan, the kethuk, kempyang, and kenong. Bonang may be made of forged bronze, welded and cold-hammered iron, or a combination of metals. In addition to the gong-shaped form of kettles, economical bonang made of hammered iron or brass plates with raised bosses are often found in village gamelan, in Suriname-style gamelan, and in some American gamelan.
"""
}
