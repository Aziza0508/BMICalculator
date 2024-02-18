//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aziza Gilash on 13.02.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    //let BMI = weight/pow(heigh, 2)
    //bmiValue = String(format: "%.1f", BMI)
    var bmi: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        
        let bmiValue = weight/pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies", color: UIColor.gray)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "eat less pies", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}


