import UIKit

protocol carDecsription {
    var brend: String {get}
    var year: Int {get}

   
}
protocol  engineDescription {
    func engineState ()
}


class Car: carDecsription {
    var brend: String
    var year: Int

    init (brend: String, year: Int) {
        self.brend = brend
        self.year = year
    }
}
class Car: engineDescription {
    enum engine {
        case start
        case stop
    }
    func engineState () {
        switch  engine {
        case stop:
            print("Двигатель заглушен")
        case start:
            print("Двигатель запущен")
        }
    }}


extension

var windowsState: windows
    var trunkState: trunk
    



p

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
