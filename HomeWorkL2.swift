//
//  ViewController.swift
//  HomeWork1ChervoniyDima
//
//  Created by Дмитрий on 10.07.2018.
//  Copyright © 2018 Дмитрий. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Block 1. Задача 0. Вывести на экран наибольшее из двух чисел
        let a = 20
        let b = 35
        
        if a > b {
            print ("______", a, "Является больше чем", b, "______")
        } else {
            print ("______", b, "Является больше чем", a, "______")
        }
        
// Block 1. Задача 1. Вывести на экран квадрат и куб числа
        var namber = 3
        var square = namber * namber
        var cube = square * namber
        print ("______", "Квадрат числа = ", square, "______")
        print ("______", "Куб числа = ", cube, "______")
    
//  Block 1. Задача 2. Вывести на экран все числа до заданного и в обратном порядке до 0
        for a in 0...20 {
            print (a)
            print("______")
        }
        for a in (0...20).reversed() {
            print(a)
            print("______")
}

// Block 1. Задача 3. Подсчитать общее количество делителей числа и вывести их.
        
        let anyNumber = 56
        var delitel1 = 0
        var sumOfDelitel = 0
        
        while delitel1<anyNumber / 2 {
            delitel1 += 1
            if anyNumber % delitel1 == 0 {
                sumOfDelitel += 1
                print(anyNumber/delitel1)
            }
        }
        print("______", "Общее количество  делителей числа", anyNumber, "равно", sumOfDelitel, "______")
        
// Block 1. Задача 4. Проверить, является ли заданное число совершенным и найти их
        
        let delimoe: Int
        let delitel: Int
        var summ: Int
        
        for delimoe in 1...345 {
        summ = 0
        for delitel in 1..<delimoe {
            if (delimoe % delitel == 0) {
                summ = summ + delitel
                }
            }
            if (delimoe == summ) {
            print("______", "Число", delimoe, "является совершенным", "______")
            }
        }
        
/* bloc2 task1. Остров Манхэттен был приобретен поселенцами за $24 в 1826 г. Каково было бы в настоящее время состояние их счета, если бы эти 24 доллара были помещены тогда в банк под 6% годового дохода? */
        
        let yearSale = 1826
        let yearNow = 2018
        var stoim: Double = 24.0
        var procent = 6
        
        for _ in yearSale..<yearNow {
            stoim += stoim / 100 * 6
        }
            print("______", "Состояние счета в 2018 году составило бы ", stoim, "______")
        
/* Block 2. Задача 2. Ежемесячная стипендия студента составляет 700 гривен, а расходы на проживание превышают ее и составляют 1000 грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3%. Определить, какую нужно иметь сумму денег, чтобы прожить учебный год (10 месяцев), используя только эти деньги и стипендию. */
        
        let scholarship: Float = 700
        let inflationRate: Float = 3
        var costs: Float = 1000
        var costsInTenMonthe: Float = 0
        var incomesInTenMonthe: Float = scholarship * 10
        
        for _ in 0..<10 {
            costs += costs * 3 / 100
            costsInTenMonthe += costs
        }
        print("______", "Всего расходов за десять месяцев", costsInTenMonthe, "______")
        print("______", "Всего доходов за десять месяцев", incomesInTenMonthe, "______")
        print("______", "Необходимая сумма для выживания", costsInTenMonthe - incomesInTenMonthe, "______")
        
/* Block 2. Задача 3. У студента имеются накопления 2400 грн. Ежемесячная стипендия составляет 700 гривен, а расходы на проживание превышают ее и составляют 1000 грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3%. Определить, сколько месяцев сможет прожить студент, используя только накопления и стипендию. */

        var accumulatio: Float = 2400
        let scholarship1: Float = 700
        var livingExpenses: Float = 1000
        let inflationRate1: Float = 3.00
        var costsInMonthe: Float = 0
        var numberOfMonthe = 0
        
        while accumulatio > costsInMonthe {
            accumulatio += scholarship1
            livingExpenses += livingExpenses * 3 / 100
            costsInMonthe += livingExpenses
            numberOfMonthe += 1
        }
        print("______", "Студент сможет прожить", numberOfMonthe, "месяцев", "______")
        
/*  Block 2. Задача 4. 2-хзначную цело численную переменную типа 25, 41, 12. После выполнения вашей программы у вас в другой переменной должно лежать это же число только задом на перед 52, 14, 21 */
        
        var b3 = 18
        var temp = 0
        var temp1 = 0
        var temp2 = 0
        
            temp = b3 % 10
            temp1 = b3 - temp
            temp2 = temp1 / 10
        
         print(temp, temp2)
}
}
