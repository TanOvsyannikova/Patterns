protocol Vehicle {
    func Drive()
}

class Car: Vehicle {
    func Drive() {
        print("Drive a car")
    }
}

class Truck: Vehicle {
    func Drive() {
        print("Drive a truck")
    }
}

class Bus: Vehicle {
    func Drive() {
        print("Drive a bus")
    }
}

protocol VehicleFactory {
    func produceVehicle() -> Vehicle
}

class CarFactory: VehicleFactory {
    func produceVehicle() -> Vehicle {
        print("Car was produced")
        return Car()
    }
}

class TruckFactory: VehicleFactory {
    func produceVehicle() -> Vehicle {
        print("Truck was produced")
        return Truck()
    }
}

class BusFactory: VehicleFactory {
    func produceVehicle() -> Vehicle {
        print("Bus was produced")
        return Bus()
    }
}

let carFactory = CarFactory()
let car = carFactory.produceVehicle()

let truckFactory = TruckFactory()
let truck = truckFactory.produceVehicle()

let busFactory = BusFactory()
let bus = busFactory.produceVehicle()
