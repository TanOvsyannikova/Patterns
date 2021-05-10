protocol Car {
    func Drive()
}

class SmallSizeCar: Car {
    func Drive() {
        print("Drive a small size car")
    }
}

class MediumSizeCar: Car {
    func Drive() {
        print("Drive a medium size car")
    }
}

protocol Bus {
    func Drive()
}

class SmallSizeBus: Bus {
    func Drive() {
        print("Drive a small size bus")
    }
}

class MediumSizeBus: Bus {
    func Drive() {
        print("Drive a medium size bus")
    }
}

protocol Factory {
    func produceBus() -> Bus
    func produceCar() -> Car
}

class SmallSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Small size bus was produced")
        return SmallSizeBus()
    }
    
    func produceCar() -> Car {
        print("Small size car was produced")
        return SmallSizeCar()
    }
}

class MediumSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Medium size bus was produced")
        return MediumSizeBus()
    }
    
    func produceCar() -> Car {
        print("Medium size car was produced")
        return MediumSizeCar()
    }
}

let smallFactory = SmallSizeFactory()
smallFactory.produceCar()

let mediumFactory = MediumSizeFactory()
mediumFactory.produceBus()
