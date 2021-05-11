protocol DriveVehicle {
    func haveASeat()
    func useProtection()
    func checkTheMirror()
    func turnSignal()
    func driveForward()
    func startVehicle()
}

extension DriveVehicle {
    func startVehicle() {
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
    func haveASeat() {
        print("sit down on a bicycle seat")
    }
    
    func useProtection() {
        print("wear a helmet")
    }
    
    func checkTheMirror() {
        print("look at the little mirror")
    }
    
    func turnSignal() {
        print("show left hand")
    }
    
    func driveForward() {
        print("go")
    }
}

class Car: DriveVehicle {
    func haveASeat() {
        print("sit down on a car seat")
        closeTheDoor()
    }
    
    func useProtection() {
        print("fasten seat belt")
    }
    
    func checkTheMirror() {
        print("look at the rearview mirror")
    }
    
    func turnSignal() {
        print("turn on the left turn light")
    }
    
    func driveForward() {
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

