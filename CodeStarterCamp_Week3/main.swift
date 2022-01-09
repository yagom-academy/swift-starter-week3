//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class Person {
    var budget: Int
    
    func buy(something: String) {
        print("\(something)을 삽니다.")
    }
    
    init(budget: Int) {
        self.budget = budget
    }
}

class CoffeeShop {
    var salesRevenue: Int
    var menuList: Array<Menu>
    var pickUpTable: Array<CoffeeType>?
    var barista: Barista?
    
    let yagomAmericano = Menu(coffeeType: CoffeeType.Americano, price: 3000)
    let yagomLatte = Menu(coffeeType: CoffeeType.Latte, price: 3500)
    let yagomBrew = Menu(coffeeType: CoffeeType.Coldbrew, price: 4000)
    let yagomTea = Menu(coffeeType: CoffeeType.Tea, price: 3000)
    
    func order(coffee: Menu, from: Person) {
        
    }
    func makeCoffee(of: Menu) {
        
    }
    
    init(salesRevenue: Int) {
        self.salesRevenue = salesRevenue
        self.menuList = [yagomAmericano, yagomLatte, yagomBrew, yagomTea]
    }
}

class Barista: Person {
    var workPlace: CoffeeShop?
}

struct Menu {
    var coffeeType: CoffeeType
    var price: Int
}

enum CoffeeType {
    case Americano
    case Latte
    case Coldbrew
    case Tea
}

var misterLee = Barista(budget: 10000)
var missKim = Person(budget: 10000)
var yagombucks = CoffeeShop(salesRevenue: 0)

yagombucks.barista = misterLee



