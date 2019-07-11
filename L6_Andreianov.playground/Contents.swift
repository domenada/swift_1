import UIKit


class Cars {
    var brend: String
    var year: Int
    
    init (brend: String, year: Int) {
        self.brend = brend
        self.year = year
    }
}

struct StackCar {
    private var singleCar: [Cars] = []
    mutating func push(_ element: Cars) {
    singleCar.append(element)
    }
    mutating func pop() -> Cars? {
        return singleCar.removeLast()
    }
}
var stack = StackCar()
stack.push(Cars(brend: "ВАЗ", year: 2014))
stack.push(Cars(brend: "Газель", year: 2010))
stack.push(Cars(brend: "Калина Спорт", year: 2018))
stack.push(Cars(brend: "УАЗ", year: 1999))
stack.pop()


var cars = ["ВАЗ", "Газель", "Калина Спорт", "УАЗ"]
cars.forEach{
    print($0)
}
cars.sort { $0 > $1 }
