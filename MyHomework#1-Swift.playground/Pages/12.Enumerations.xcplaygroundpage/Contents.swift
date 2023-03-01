// Перечеления - enum

enum typeDevice{
    case laptop(mark:markLaptop)
    case desktopComputer
    case tablet
    case smartPhone
    case smartwatch
    
    enum markLaptop:String{
        case apple   = "Apple MacBook"
        case acer    = "Acer"
        case samsung = "Samsung"
    }
}

let device:typeDevice = .laptop(mark: .apple)
switch device {
case .laptop(mark: let markLaptop) where markLaptop == .apple:
    print("Notebook \(markLaptop.rawValue)") // проверка с использованием rawValue
case .laptop(mark: let markLaptop) where markLaptop == .samsung:
    print("Nonebook Samsung")
case .laptop(let mark):
    print("Notebook \(mark.rawValue)")
case .desktopComputer:
    print("PC")
case .tablet:
    print("Tablet")
case .smartPhone:
    print("Smarphone")
case .smartwatch:
    print("SmartWatch")

}


