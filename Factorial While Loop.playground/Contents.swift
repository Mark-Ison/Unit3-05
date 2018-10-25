// Created on: October 2018
// Created by: Mark Ison
// Created for: ICS3CR
// This code is to solve factorial
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    
    // Inputs
    let instructionsLabel : UILabel = UILabel()
    let inputLabel : UILabel = UILabel()
    let answerLabel : UILabel = UILabel()
    let numberEnteredTextField : UITextField = UITextField()
    let calculateButton : UIButton = UIButton()
    var counter = 1
    var previous = 1
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Give us a number between 1-20 and we will calculate its factorial."
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        inputLabel.text = "Please enter a number: "
        view.addSubview(inputLabel)
        inputLabel.translatesAutoresizingMaskIntoConstraints = false
        inputLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        inputLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberEnteredTextField.borderStyle = UITextBorderStyle.roundedRect
        numberEnteredTextField.placeholder = " 1 - 20 "
        view.addSubview(numberEnteredTextField)
        numberEnteredTextField.translatesAutoresizingMaskIntoConstraints = false
        numberEnteredTextField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        numberEnteredTextField.leadingAnchor.constraint(equalTo: inputLabel.trailingAnchor, constant: 10).isActive = true
        
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculateFactorial), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calculateButton.topAnchor.constraint(equalTo: inputLabel.bottomAnchor, constant: 25).isActive = true
        
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    
    @objc func calculateFactorial() {
        // calculate factorial
        let END_VALUE : Int = Int(numberEnteredTextField.text!)!
        while counter <= END_VALUE {
            previous = previous * counter
            counter += 1
        }
        answerLabel.text = "The factorial of \(END_VALUE) is \(previous)"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}



PlaygroundPage.current.liveView = ViewController()

