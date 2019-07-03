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

struct Auto {
    let brend: String
    let year: Int
    var engineState: engine
    var windowsState: windows
    var trunkState: trunk
    
    func vKonsol() {
        print ("Имеется автомобиль \(brend) \(year) года выпуска")
    }
    mutating func engineDescription () {
        switch  engineState {
        case .stop :
            print("Двигатель заглушен")
        case .start  :
            print("Двигатель запущен")
        default:
            break
        }
}
    mutating func windowsDescription () {
        switch  windowsState {
        case .open :
            print("Двери открыты")
        case .close  :
            print("Двери закрыты")
        default:
            break
        }
    }
}

var car1 = Auto (brend: "Газель", year: 2018, engineState: .start, windowsState: .open, trunkState: .load)
var car2 = Auto (brend: "ВАЗ", year: 2015, engineState: .start, windowsState: .close, trunkState: .unload)
var car3 = Auto (brend: "УАЗ", year: 2010, engineState: .stop, windowsState: .close, trunkState: .unload)

car1.vKonsol ()
car1.engineDescription ()
car1.windowsDescription ()
car2.vKonsol()
car2.engineDescription()
car2.windowsDescription()
