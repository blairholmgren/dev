//
//  CountDownViewController.swift
//  Countdown
//
//  Created by Blair Holmgren on 5/1/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

class CountDownViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.countDownDuration = 5
        countdown.delegate = self
        
        timeLabel.font = UIFont.monospacedDigitSystemFont(ofSize: timeLabel.font.pointSize, weight: .medium)
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        let duration = datePicker.countDownDuration
        countdown.start(duration: duration)
    }
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
    }
    
    @IBAction func datePickerValueChanged(_ sender: Any) {
        print("Countdown: \(datePicker.countDownDuration)")
        
    }
    
    private func updateViews() {
        let date = Date(timeIntervalSinceReferenceDate: countdown.timeRemaining)
        timeLabel.text = dateFormatter.string(from: date)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Timer Finished", message: "Your countdown is over", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
  
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var timeLabel: UILabel!

    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var resetButton: UIButton!
    
    let countdown = Countdown()
    
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        
        formatter.dateFormat = "HH:mm:ss.SS"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        return formatter
    }()
}

extension CountDownViewController: CountdownDelegate {
    func countdownDidFinish() {
        updateViews()
        print("Finished")
        showAlert()
    }
    
    func countdownDidUpdate(timeRemaining: TimeInterval) {
        updateViews()
}
}
