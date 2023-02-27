
import UIKit

func calculateMoney(wallet: [Int], type: Int) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0

    for value in wallet {
        
        if (type == nil) || (type != nil && value == type) {
            sum += value
            count+=1
        }
    }
  return (sum, count)
}

let wallet = [100, 20, 33, 1, 4, 7, 99, 3, 3, 1, 1, 4]

let money = calculateMoney(wallet: wallet, type: 3)


