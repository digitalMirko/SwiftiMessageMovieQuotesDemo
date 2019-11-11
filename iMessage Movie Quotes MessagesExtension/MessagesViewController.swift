//
//  MessagesViewController.swift
//  iMessage Movie Quotes MessagesExtension
//
//  Created by Mirko Cukich on 11/3/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
// Swift iMessage Movie Quotes Demo - Demo 27 of 30

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    // Row 1 from left to right
    @IBOutlet weak var button01: UIButton!
    @IBOutlet weak var button02: UIButton!
    @IBOutlet weak var button03: UIButton!
    
    // Row 2 from left to right
    @IBOutlet weak var button04: UIButton!
    @IBOutlet weak var button05: UIButton!
    @IBOutlet weak var button06: UIButton!
    
    // Row 3 from left to right
    @IBOutlet weak var button07: UIButton!
    @IBOutlet weak var button08: UIButton!
    @IBOutlet weak var button09: UIButton!
    
    // Row 4 from left to right
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button01.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button02.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button03.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button04.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button05.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button06.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button07.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button08.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button09.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button10.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button11.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        button12.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        
        
        
    }
    
    // MARK: - Conversation Handling
    
    override func willBecomeActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the inactive to active state.
        // This will happen when the extension is about to present UI.
        
        // Use this method to configure the extension and restore previously stored state.
    }
    
    override func didResignActive(with conversation: MSConversation) {
        // Called when the extension is about to move from the active to inactive state.
        // This will happen when the user dissmises the extension, changes to a different
        // conversation or quits Messages.
        
        // Use this method to release shared resources, save user data, invalidate timers,
        // and store enough state information to restore your extension to its current state
        // in case it is terminated later.
    }
   
    override func didReceive(_ message: MSMessage, conversation: MSConversation) {
        // Called when a message arrives that was generated by another instance of this
        // extension on a remote device.
        
        // Use this method to trigger UI updates in response to the message.
    }
    
    override func didStartSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user taps the send button.
    }
    
    override func didCancelSending(_ message: MSMessage, conversation: MSConversation) {
        // Called when the user deletes the message without sending it.
    
        // Use this to clean up state related to the deleted message.
    }
    
    override func willTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called before the extension transitions to a new presentation style.
    
        // Use this method to prepare for the change in presentation style.
    }
    
    override func didTransition(to presentationStyle: MSMessagesAppPresentationStyle) {
        // Called after the extension transitions to a new presentation style.
    
        // Use this method to finalize any behaviors associated with the change in presentation style.
    }
    
    func templateInfo(wording: String, imageUsed: String) {
        
        let template = MSMessageTemplateLayout()
               template.caption = wording
               template.image = UIImage(named: imageUsed)
               
               let message = MSMessage()
               message.layout = template
               
               activeConversation?.insert(message, completionHandler: nil)
               requestPresentationStyle(.compact)
    }
    
    // Row 1 from left to right
    @IBAction func movieBtn01(_ sender: Any) {
        
        templateInfo(wording: "Frankly, my dear, I don't give a damn.", imageUsed: "01GoneWithTheWind")

    }
    
    @IBAction func movieBtn02(_ sender: Any) {
        
        templateInfo(wording: "Here's looking at you kid", imageUsed: "02Casablanca")
        
    }
    
    @IBAction func movieBtn03(_ sender: Any) {
        
    }
    
    // Row 2 from left to right
    @IBAction func movieBtn04(_ sender: Any) {
        
    }
    
    @IBAction func movieBtn05(_ sender: Any) {
        
    }
    
    @IBAction func movieBtn06(_ sender: Any) {
        
    }
    
    //Row 3 from left to right
    @IBAction func movieBtn07(_ sender: Any) {
        
    }
    
    @IBAction func movieBtn08(_ sender: Any) {
        
    }
    
    @IBAction func movieBtn09(_ sender: Any) {
        
    }
    
    // Row 4 from left to right
    @IBAction func movieBtn10(_ sender: Any) {
        
    }
    
    @IBAction func movieBtn11(_ sender: Any) {
        
    }
    
    @IBAction func movieBtn12(_ sender: Any) {
        
    }
    
    
    
}
