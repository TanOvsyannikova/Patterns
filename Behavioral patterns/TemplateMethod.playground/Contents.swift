class DriveVehicle {
    final func startVehicle() {
        haveASeat()
        useProtection()
        checkTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("Override this method")
    }
    
    func useProtection() {
        preconditionFailure("Override this method")
    }
    
    func checkTheMirror() {
        preconditionFailure("Override this method")
    }
    
    func turnSignal() {
        preconditionFailure("Override this method")
    }
    
    func driveForward() {
        preconditionFailure("Override this method")
    }
}

//let v = DriveVehicle()
//v.startVehicle()

class Bicycle: DriveVehicle {
    override func haveASeat() {
        print("sit down on a bicycle seat")
    }
    
    override func useProtection() {
        print("wear a helmet")
    }
    
    override func checkTheMirror() {
        print("look at the little mirror")
    }
    
    override func turnSignal() {
        print("show left hand")
    }
    
    override func driveForward() {
        print("go")
    }
}

class Car: DriveVehicle {
    override func haveASeat() {
        print("sit down on a car seat")
        closeTheDoor()
    }
    
    override func useProtection() {
        print("fasten seat belt")
    }
    
    override func checkTheMirror() {
        print("look at the rearview mirror")
    }
    
    override func turnSignal() {
        print("turn on the left turn light")
    }
    
    override func driveForward() {
        print("push pedal")
    }
    
    func closeTheDoor() {
        print("close the door")
    }
}

let car = Car()
let bicycle = Bicycle()

car.startVehicle()
print()
bicycle.startVehicle()
