import UIKit

class AddOperation { // 덧셈 함수
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber + secondNumber)
    }
}

class SubtractOperation { // 뻴셈 함수
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber - secondNumber)
    }
}

class MultiplyOperation { // 곱셉 함수
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber * secondNumber)
    }
}

class DivideOperation { // 나눗셈 함수
    func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber / secondNumber)
    }
}

class Calculator {
    private let addOperation: AddOperation
    private let subtractOperation: SubtractOperation
    private let multiplyOperation: MultiplyOperation
    private let divideOperation: DivideOperation
    
    // init 함수 초기화
    init(addOperation: AddOperation,
         subtractOperation: SubtractOperation,
         multiplyOperation: MultiplyOperation,
         divideOperation: DivideOperation) {
        self.addOperation = addOperation
        self.subtractOperation = subtractOperation
        self.multiplyOperation = multiplyOperation
        self.divideOperation = divideOperation
    }
    
    // 각 사직연산 분배
    func calculate(operator: String, firstNumber: Int, secondNumber: Int) -> Double {
        switch `operator` {
        case "+":
            return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return subtractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
    }
}

let calculator = Calculator(
    addOperation: AddOperation(),
    subtractOperation: SubtractOperation(),
    multiplyOperation: MultiplyOperation(),
    divideOperation: DivideOperation()
)

let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20)
let subtractResult = calculator.calculate(operator: "-", firstNumber: 30, secondNumber: 20)
let multiplyResult = calculator.calculate(operator: "*", firstNumber: 10, secondNumber: 5)
let divideResult = calculator.calculate(operator: "/", firstNumber: 40, secondNumber: 10)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")

