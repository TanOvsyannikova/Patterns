//MARK: adaptee
class SimpleCar {
    func sound() -> String {
        return "brrrr"
    }
}

//MARK: target
protocol SuperCarProtocol {
    func makeNoise() -> String
}

class SuperCar: SuperCarProtocol {
    func makeNoise() -> String {
        return "BRRRRR"
    }
}

//MARK: adapter
class SuperCarAdapter: SuperCarProtocol {
    var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}


