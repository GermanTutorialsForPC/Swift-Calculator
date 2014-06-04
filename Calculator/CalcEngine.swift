import Foundation

class CalcEngine {

    let π = 3.1415
    
    func calc(statment: String) -> Double {
        var numbers = Double[]()
        var operators = String[]()
        
        var cache: String = ""
        for calcChar in statment {
            if(calcChar != "+" && calcChar != "-") {
                let currentCalcChar = "" + calcChar
                let currentNumber = currentCalcChar.toInt()
                if(currentNumber) {
                    cache += currentCalcChar
                } else {
                    numbers.append(Double(cache.toInt()!))
                    cache = ""
                    operators.append(currentCalcChar)
                }
            } else {
                if(cache == "") {
                    cache += "\(calcChar)"
                } else {
                    numbers.append(Double(cache.toInt()!))
                    cache = ""
                    operators.append("\(calcChar)")
                }
            }
        }
        
        numbers.append(Double(cache.toInt()!))
        
        //Berechnung
        while(!operators.isEmpty) {
            var findOp = false
            
            //Modolo
            for(index, value) in enumerate(operators) {
                if(value == "%") {
                    if(index < numbers.count - 1) {
                        var result = numbers[index]%numbers[index+1]
                        numbers[index] = result
                        numbers.removeAtIndex(index+1)
                        operators.removeAtIndex(index)
                        findOp = !findOp
                        break
                    }
                }
            }
            if(findOp) {
                continue
            }
            
            //Multi/Divi
            for(index, value) in enumerate(operators) {
                if(value == "*") {
                    if(index < numbers.count - 1) {
                        var result = numbers[index]*numbers[index+1]
                        numbers[index] = result
                        numbers.removeAtIndex(index+1)
                        operators.removeAtIndex(index)
                        findOp = !findOp
                        break
                    }
                } else if(value == "/") {
                    if(index < numbers.count - 1) {
                        var result = numbers[index]/numbers[index+1]
                        numbers[index] = result
                        numbers.removeAtIndex(index+1)
                        operators.removeAtIndex(index)
                        findOp = !findOp
                        break
                    }
                }
            }
            if(findOp) {
                continue
            }
            
            //Add/Sub
            for(index, value) in enumerate(operators) {
                if(value == "+") {
                    if(index < numbers.count - 1) {
                        var result = numbers[index]+numbers[index+1]
                        numbers[index] = result
                        numbers.removeAtIndex(index+1)
                        operators.removeAtIndex(index)
                        findOp = !findOp
                        break
                    }
                } else if(value == "-") {
                    if(index < numbers.count - 1) {
                        var result = numbers[index]-numbers[index+1]
                        numbers[index] = result
                        numbers.removeAtIndex(index+1)
                        operators.removeAtIndex(index)
                        findOp = !findOp
                        break
                    }
                }
            }
            if(findOp) {
                continue
            }
        }
        
        return numbers[0]
    }
    
    func ggt(v1: Int, v2: Int) -> Int {
        if(v1 < v2) {
            return -1
        }
        
        var modolo: Int = v1 % v2
        if(modolo == 0) {
            return v2
        }
        return ggt(v2, v2: modolo)
    }
    
}