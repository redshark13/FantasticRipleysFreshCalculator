//
//  ViewController.swift
//  apple tutorial calculator
//
//  Created by Ripley Roane on 12/8/21.
//

import UIKit

class CalculatorController: UIViewController {
    
    
    @IBOutlet weak var LabelOutlet: UILabel!
    
    @IBOutlet weak var ZeroOutlet: UIStackView!
    
    @IBAction func ZeroBtn(_ sender: Any) {
        useNumber(value: "0")
    }
    
    @IBOutlet weak var OneOutlet: UIStackView!
    
    @IBAction func OneBtn(_ sender: Any) {
        useNumber(value: "1")
    }
    
    
    @IBOutlet weak var TwoOutlet: UIStackView!
    
    @IBAction func TwoBtn(_ sender: Any) {
        useNumber(value: "2")
    }
    
    @IBOutlet weak var ThreeOutlet: UIStackView!
    
    @IBAction func ThreeBtn(_ sender: Any) {
        useNumber(value: "3")
    }
    
    @IBOutlet weak var FourOutlet: UIStackView!
    
    @IBAction func FourBtn(_ sender: Any) {
        useNumber(value: "4")
    }
    
    @IBOutlet weak var FiveOutlet: UIStackView!
    
    @IBAction func FiveBtn(_ sender: Any) {
        useNumber(value: "5")
    }
    
    @IBOutlet weak var SixOutlet: UIStackView!
    
    @IBAction func SixBtn(_ sender: Any) {
        useNumber(value: "6")
    }
    
    @IBOutlet weak var SevenOutlet: UIStackView!
    
    @IBAction func SevenBtn(_ sender: Any) {
        useNumber(value: "7")
    }
    
    @IBOutlet weak var EightOutlet: UIStackView!
    
    @IBAction func EightBtn(_ sender: Any) {
        useNumber(value: "8")
    }
    
    @IBOutlet weak var NineOutlet: UIStackView!
    
    @IBAction func NineBtn(_ sender: Any) {
        useNumber(value: "9")
    }
    
    @IBOutlet weak var DecimalOutlet: UIStackView!
    
    @IBAction func DecimalBtn(_ sender: Any) {
        useSymbol(value: ".")
    }
    
    @IBOutlet weak var AcOutlet: UIStackView!
    
    @IBAction func AcBtn(_ sender: Any) {
        clearAll()
    }
    @IBOutlet weak var BackOutlet: RoundedBorderBtn!
    @IBAction func BackBtn(_ sender: Any) {
        if(!LabelOutlet.text!.isEmpty){
            LabelOutlet.text?.removeLast()
          
            
        }
    }
    @IBOutlet weak var DivisionOutlet: UIStackView!
    
    @IBAction func DivisionBtn(_ sender: Any) {
        useSymbol(value: "/")
    }
    
    @IBOutlet weak var MultiplyOutlet: UIButton!
    
    @IBAction func MultiplyBtn(_ sender: Any) {
        useSymbol(value: "*")
    }
    
    @IBOutlet weak var SubtractOutlet: UIButton!
    
    @IBAction func SubtractBtn(_ sender: Any) {
        useSymbol(value: "-")
    }
    
    @IBOutlet weak var PlusOutlet: UIButton!
    
    @IBAction func PlusBtn(_ sender: Any) {
        useSymbol(value: "+")
    }
    
    @IBOutlet weak var EqualsOutlet: UIButton!
    
    @IBAction func EqualsBtn(_ sender: Any) {
        let equate = NSExpression(format: LabelOutlet.text!)
        let result = equate.expressionValue(with: nil, context: nil) as! Double
        let resultGetter = getResult(result: result)
        LabelOutlet.text = resultGetter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    func clearAll(){
        previousNumber = ""
        nextNumber = ""
        LabelOutlet.text = ""
    }
    func useSymbol(value:String){
        previousNumber = previousNumber + value
        LabelOutlet.text = previousNumber
    }
    func useNumber(value:String){
        previousNumber = previousNumber + value
        LabelOutlet.text = previousNumber
    }
    func getResult(result:Double)-> String {
        if(result.truncatingRemainder(dividingBy: 1.0) == 0){
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.2f", result)
        }
    }
}

