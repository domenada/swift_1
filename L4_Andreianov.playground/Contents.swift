import UIKit

enum engine {
    case start
    case stop
}
enum windows {
    case open
    case close
}
enum trunk {
    case load
    case unload
}

class Car {
    
func engineDescription () {
    switch  engineState {
    case .stop :
            print("Двигатель заглушен")
    case .start  :
            print("Двигатель запущен")
        }
    }
    
    let brend: String
    let year: Int
    var engineState: engine
    var windowsState: windows
    var trunkState: trunk
    
    init (brend: String, year: Int, engineState: engine, windowsState: windows, trunkState: trunk) {
        self.brend = brend
        self.year = year
        self.engineState = engineState
        self.windowsState = windowsState
        self.trunkState = trunkState
        
    }
}

        
enum capacity {
    case full
    case empty
}
enum trunkType {
    case trailer
    case van
}
class TrunkCar: Car {
    
    override func engineDescription () {
        super.engineDescription ()
        print("Двигатель запущен")
    }
    var LoadCapacityState: capacity      // грузоподьемность
    var TrunkType: trunkType // тип кузова
    init (brend: String, year: Int, engineState: engine, windowsState: windows, trunkState: trunk, LoadCapacityState: capacity, TrunkType: trunkType)
        
    {
        self.LoadCapacityState = LoadCapacityState
        self.TrunkType = TrunkType
        super.init (brend: brend, year: year, engineState: engineState, windowsState: windowsState, trunkState: trunkState)
       
     
}
}

class SportCar: Car {
    
    override func engineDescription () {
        super.engineDescription ()
        print("Зажигание включено")
    }
    
    let Speed: Double // скорость
    init (brend: String, year: Int, engineState: engine, windowsState: windows, trunkState: trunk, Speed: Double) {
        self.Speed = Speed
        super.init (brend: brend, year: year, engineState: engineState, windowsState: windowsState, trunkState: trunkState)    }
    
}

    var car1 = Car (brend: "ВАЗ", year: 2015, engineState: .start, windowsState: .close, trunkState: .unload)
    var car2 = TrunkCar (brend: "Газель", year: 2018, engineState: .start, windowsState: .open, trunkState: .load, LoadCapacityState: .full, TrunkType: .van)
    var car3 = SportCar (brend: "Калина Спорт", year: 2010, engineState: .start, windowsState: .close, trunkState: .unload, Speed: 120.5)

    func vKonsol() {
    print (car1, car2, car3)
}


