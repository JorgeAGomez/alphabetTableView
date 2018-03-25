//
//  AlphabetView.swift
//  CustomSectionAlphabet
//
//  Created by Jorge Gomez on 2018-03-25.
//  Copyright © 2018 codeByMe. All rights reserved.
//

import Foundation
import UIKit

class AlphabetView: UIView {
  
  @IBOutlet var view: AlphabetView!
  @IBOutlet weak var btnA: UIButton!
  @IBOutlet weak var btnB: UIButton!
  @IBOutlet weak var btnC: UIButton!
  @IBOutlet weak var btnD: UIButton!
  @IBOutlet weak var btnE: UIButton!
  @IBOutlet weak var btnF: UIButton!
  @IBOutlet weak var btnG: UIButton!
  @IBOutlet weak var btnH: UIButton!
  @IBOutlet weak var btnI: UIButton!
  @IBOutlet weak var btnJ: UIButton!
  @IBOutlet weak var btnK: UIButton!
  @IBOutlet weak var btnL: UIButton!
  @IBOutlet weak var btnM: UIButton!
  @IBOutlet weak var btnN: UIButton!
  @IBOutlet weak var btnO: UIButton!
  @IBOutlet weak var btnP: UIButton!
  @IBOutlet weak var btnQ: UIButton!
  @IBOutlet weak var btnR: UIButton!
  @IBOutlet weak var btnS: UIButton!
  @IBOutlet weak var btnT: UIButton!
  @IBOutlet weak var btnU: UIButton!
  @IBOutlet weak var btnV: UIButton!
  @IBOutlet weak var btnW: UIButton!
  @IBOutlet weak var btnX: UIButton!
  @IBOutlet weak var btnY: UIButton!
  @IBOutlet weak var btnZ: UIButton!
  
  var allButtons = [UIButton]()
  
  var delegate: AlphabetDelegate?
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    UINib(nibName: "AlphabetView", bundle: nil).instantiate(withOwner: self, options: nil)
    addSubview(view)
    view.frame = self.bounds
    setupAlphabet()
    allButtons = [btnA,btnB,btnC,btnD,btnE,btnF,btnG,btnH,btnI,btnJ,btnK,btnL,btnM,btnN,btnO,btnP,btnQ,btnR,btnS,btnT,btnU,btnV,btnW,btnX,btnY,btnZ]
  }
  
  func setupAlphabet(){
    btnA.tag = 0
    btnA.tintColor = .darkGray
    
    btnB.tag = 1
    btnB.tintColor = .darkGray
    
    btnC.tag = 2
    btnC.tintColor = .darkGray
    
    btnD.tag = 3
    btnD.tintColor = .darkGray
    
    btnE.tag = 4
    btnE.tintColor = .darkGray
    
    btnF.tag = 5
    btnF.tintColor = .darkGray
    
    btnG.tag = 6
    btnG.tintColor = .darkGray
    
    btnH.tag = 7
    btnH.tintColor = .darkGray
    
    btnI.tag = 8
    btnI.tintColor = .darkGray
    
    btnJ.tag = 9
    btnJ.tintColor = .darkGray
    
    btnK.tag = 10
    btnK.tintColor = .darkGray
    
    btnL.tag = 11
    btnL.tintColor = .darkGray
    
    btnM.tag = 12
    btnM.tintColor = .darkGray
    
    btnN.tag = 13
    btnN.tintColor = .darkGray
    
    btnO.tag = 14
    btnO.tintColor = .darkGray
    
    btnP.tag = 15
    btnP.tintColor = .darkGray
    
    btnQ.tag = 16
    btnQ.tintColor = .darkGray
    
    btnR.tag = 17
    btnR.tintColor = .darkGray
    
    btnS.tag = 18
    btnS.tintColor = .darkGray
    
    btnT.tag = 19
    btnT.tintColor = .darkGray
    
    btnU.tag = 20
    btnU.tintColor = .darkGray
    
    btnV.tag = 21
    btnV.tintColor = .darkGray
    
    btnW.tag = 22
    btnW.tintColor = .darkGray
    
    btnX.tag = 23
    btnX.tintColor = .darkGray
    
    btnY.tag = 24
    btnY.tintColor = .darkGray
    
    btnZ.tag = 25
    btnZ.tintColor = .darkGray
    
  }
  
  private func makeAllGray(except: UIButton){
    for button in allButtons {
      if except.tag != button.tag {
        button.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedA(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnA.tag)
      if btnA.tintColor == .darkGray {
        btnA.tintColor = .red
        makeAllGray(except: btnA)
      } else {
        btnA.tintColor = .darkGray
      }
    }
  }

  
  @IBAction func swipedB(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnB.tag)
      if btnB.tintColor == .darkGray {
        btnB.tintColor = .red
        makeAllGray(except: btnB)
      } else {
        btnB.tintColor = .darkGray
      }
    }
  }
  
  
  @IBAction func swipedC(_ sender: Any) {
      if let delegate = delegate {
      delegate.jumpToSection(index: btnC.tag)
      if btnC.tintColor == .darkGray {
        btnC.tintColor = .red
        makeAllGray(except: btnC)
      } else {
        btnC.tintColor = .darkGray
      }
    }
  }
  

  @IBAction func swipedD(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnD.tag)
      if btnD.tintColor == .darkGray {
        btnD.tintColor = .red
        makeAllGray(except: btnD)
      } else {
        btnD.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedE(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnE.tag)
      if btnE.tintColor == .darkGray {
        btnE.tintColor = .red
        makeAllGray(except: btnE)
      } else {
        btnE.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedF(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnF.tag)
      if btnF.tintColor == .darkGray {
        btnF.tintColor = .red
        makeAllGray(except: btnF)
      } else {
        btnF.tintColor = .darkGray
      }
    }
  }
  
  
  @IBAction func swipedG(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnG.tag)
      if btnG.tintColor == .darkGray {
        btnG.tintColor = .red
        makeAllGray(except: btnG)
      } else {
        btnG.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedH(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnH.tag)
      if btnH.tintColor == .darkGray {
        btnH.tintColor = .red
        makeAllGray(except: btnH)
      } else {
        btnH.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedI(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnI.tag)
      if btnI.tintColor == .darkGray {
        btnI.tintColor = .red
        makeAllGray(except: btnI)
      } else {
        btnI.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedJ(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnJ.tag)
      if btnJ.tintColor == .darkGray {
        btnJ.tintColor = .red
        makeAllGray(except: btnJ)
      } else {
        btnJ.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedK(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnK.tag)
      if btnK.tintColor == .darkGray {
        btnK.tintColor = .red
        makeAllGray(except: btnK)
      } else {
        btnK.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedL(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnL.tag)
      if btnL.tintColor == .darkGray {
        btnL.tintColor = .red
        makeAllGray(except: btnL)
      } else {
        btnL.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedM(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnM.tag)
      if btnM.tintColor == .darkGray {
        btnM.tintColor = .red
        makeAllGray(except: btnM)
      } else {
        btnM.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedN(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnN.tag)
      if btnN.tintColor == .darkGray {
        btnN.tintColor = .red
        makeAllGray(except: btnN)
      } else {
        btnN.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedO(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnO.tag)
      if btnO.tintColor == .darkGray {
        btnO.tintColor = .red
        makeAllGray(except: btnO)
      } else {
        btnO.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedP(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnP.tag)
      if btnP.tintColor == .darkGray {
        btnP.tintColor = .red
        makeAllGray(except: btnP)
      } else {
        btnP.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedQ(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnQ.tag)
      if btnQ.tintColor == .darkGray {
        btnQ.tintColor = .red
        makeAllGray(except: btnQ)
      } else {
        btnQ.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedR(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnR.tag)
      if btnR.tintColor == .darkGray {
        btnR.tintColor = .red
        makeAllGray(except: btnR)
      } else {
        btnR.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedS(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnS.tag)
      if btnS.tintColor == .darkGray {
        btnS.tintColor = .red
        makeAllGray(except: btnS)
      } else {
        btnS.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedT(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnT.tag)
      if btnT.tintColor == .darkGray {
        btnT.tintColor = .red
        makeAllGray(except: btnT)
      } else {
        btnT.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedU(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnU.tag)
      if btnU.tintColor == .darkGray {
        btnU.tintColor = .red
        makeAllGray(except: btnU)
      } else {
        btnU.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedV(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnV.tag)
      if btnV.tintColor == .darkGray {
        btnV.tintColor = .red
        makeAllGray(except: btnV)
      } else {
        btnV.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedW(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnW.tag)
      if btnW.tintColor == .darkGray {
        btnW.tintColor = .red
        makeAllGray(except: btnW)
      } else {
        btnW.tintColor = .darkGray
      }
    }
  }
  
  @IBAction func swipedX(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnX.tag)
      if btnX.tintColor == .darkGray {
        btnX.tintColor = .red
        makeAllGray(except: btnX)
      } else {
        btnX.tintColor = .darkGray
      }
    }
  }
  
  
  @IBAction func swipedY(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnY.tag)
      if btnY.tintColor == .darkGray {
        btnY.tintColor = .red
        makeAllGray(except: btnY)
      } else {
        btnY.tintColor = .darkGray
      }
    }
  }
  
  
  @IBAction func swipedZ(_ sender: Any) {
    if let delegate = delegate {
      delegate.jumpToSection(index: btnZ.tag)
      if btnZ.tintColor == .darkGray {
        btnZ.tintColor = .red
        makeAllGray(except: btnZ)
      } else {
        btnZ.tintColor = .darkGray
      }
    }
  }
  
  
  
  
  
  
  
  
  
  
  
}
