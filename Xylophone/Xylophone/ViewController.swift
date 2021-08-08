import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
         
         /*
         Code should execute after 0.2 second delay.
         You can change delay by editing 0.2.
         */
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
           // Bring's sender's opacity back up to fully opaque
           sender.alpha = 1.8
         }
        
    }
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    
    
    
}


