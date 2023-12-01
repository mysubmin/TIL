import UIKit

class Calculator {
    func calculate(operator: String, firstNumber: Int, secondNumber: Int) -> Double {
        switch `operator` {
        case "+":
            return Double(firstNumber + secondNumber)
        case "-":
            return Double(firstNumber - secondNumber)
        case "*":
            return Double(firstNumber * secondNumber)
        case "/":
            return Double(firstNumber / secondNumber)
        case "%":
            return Double(firstNumber % secondNumber)
        default:
            return 0
        }

        // 정확한 operator가 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber:10)
let subtractResult = calculator.calculate(operator: "-", firstNumber: 10, secondNumber:10)
let multiplyResult = calculator.calculate(operator: "*", firstNumber: 10, secondNumber:10)
let divideResult = calculator.calculate(operator: "/", firstNumber: 10, secondNumber:10)
let remainderResult = calculator.calculate(operator: "%", firstNumber: 10, secondNumber:10)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")
