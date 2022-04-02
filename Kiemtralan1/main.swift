//
//  main.swift
//  Kiemtralan1
//
//  Created by Chinh Ng on 02/04/2022.
//

import Foundation


// Cau 1
var inputNumber: Int
var randomNumber = Int.random(in: 1...50)
print(randomNumber)

repeat {
    inputNumber = Int(readLine() ?? "") ?? 0

    if inputNumber == randomNumber {
        print("Chuc mung")
    } else if inputNumber < randomNumber {
        print("Be qua")
    } else {
        print("Lon qua")
    }
} while inputNumber != randomNumber


// Cau 2
var soKm, soTien: Double

repeat {
    soKm = Double(readLine() ?? "") ?? 0
} while soKm < 0

if soKm <= 1 {
    soTien = soKm * 11000
} else if soKm < 32 {
    soTien = 11000 + (soKm - 1) * 9500
} else {
    soTien = 296000 + (soKm - 31) * 9000
}

// Cau 3
func isLeapYear(_ year: Int) -> Bool{
    if year % 400 == 0 {
        return true
    }

    if year % 4 == 0 && year % 100 != 0 {
        return true
    }

    return false
}

var year, month: Int
repeat {
    year = Int(readLine() ?? "") ?? 0
    month = Int(readLine() ?? "") ?? 1
} while year < 0 || month < 1

switch month {
case 1, 3, 5, 7, 8, 10, 12:
    print(31)
case 4, 6, 9, 11:
    print(30)
case 2:
    if isLeapYear(year) {
        print(29)
    } else {
        print(28)
    }
default:
    break
}

// Cau 4
var numbers = [1, 2, -2, 10, 4]

for i in 0..<numbers.count {
  for j in 1..<numbers.count - i {
    if numbers[j] > numbers[j-1] {
        let tmp = numbers[j-1]
        numbers[j-1] = numbers[j]
        numbers[j] = tmp
    }
  }
}
print(numbers)
