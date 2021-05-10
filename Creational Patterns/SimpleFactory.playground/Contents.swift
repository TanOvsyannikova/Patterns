enum CarType {
    case fastCar
    case bigCar
}

protocol Car {
    func drive()
}

class BigCar: Car {
    func drive() {
        print("you drive a big car")
    }
}

class FastCar: Car {
    func drive() {
        print("you drive a fast car")
    }
}

class CarFactory {
    static func produceCar(type: CarType) -> Car {
        var car: Car
        
        switch type {
        case .fastCar:
            car = FastCar()
        case .bigCar:
            car = BigCar()
        }
        
        return car
    }
}

//let bigCar = BigCar()
//bigCar.drive()
//
//let fastCar = FastCar()
//fastCar.drive()

let bigCar1 = CarFactory.produceCar(type: .bigCar)
let fastCar1 = CarFactory.produceCar(type: .fastCar)

bigCar1.drive()
fastCar1.drive()

