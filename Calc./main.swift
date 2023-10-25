//
//  main.swift
//  Calc.
//
//  Created by User on 25.10.2023.
//

import Foundation

var numberOne:Double = 0
var numberTwo:Double = 0
var operatoor:String = ""


func calc(_ numberOne:Double, _  operatoor:String, _  numberTwo:Double) -> Double?{
    switch operatoor {
       case "+":
           return numberOne + numberTwo
       case "-":
           return numberOne - numberTwo
       case "*":
           return numberOne * numberTwo
       case "/":
           if numberTwo != 0 {
               return numberOne / numberTwo
           } else {
               return nil
           }
       default:
           return nil
       }
}

while true{
    print("Введите первое число")
    if let input = readLine() ,  let number = Double(input){
        numberOne = number
        break
    }
    else{
        print("ОШИБКА!ПРОВЕРЬТЕ КОРРЕКНТНОСТЬ ВЕДЕННЫХ ДАННЫХ! ")
    }
}
while true {
    print("Выберите оператор (+, -, *, /):")
    if let input = readLine(), ["+", "-", "*", "/"].contains(input) {
        operatoor = input
        break
    } else {
        print("Invalid input. Please enter a valid operator (+, -, *, /).")
    }
}
    while true{
        print("Введите второе число")
        if let input = readLine(), let number = Double(input){
            numberTwo = number
            break
        }else{
            print("ОШИБКА!ПРОВЕРЬТЕ КОРРЕКНТНОСТЬ ВЕДЕННЫХ ДАННЫХ! ")
        }
    }
    if let  result = calc(numberOne, operatoor , numberTwo ){
        print(result)
    }
    else{
        print("ошибка!1")
    }





