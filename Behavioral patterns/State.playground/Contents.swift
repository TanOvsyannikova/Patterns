protocol State {
    func on(printer: Printer)
    func off(printer: Printer)
    func printDocument(printer: Printer)
}

class On: State {
    func on(printer: Printer) {
        print("It is already on")
    }
    
    func off(printer: Printer) {
        print("Turning it off")
        printer.set(state: Off())
    }
    
    func printDocument(printer: Printer) {
        print("Printing...")
        printer.set(state: Print())
    }
}

class Off: State {
    func on(printer: Printer) {
        print("Turning it on")
        printer.set(state: On())
    }
    
    func off(printer: Printer) {
        print("It is already off")
    }
    
    func printDocument(printer: Printer) {
        print("It is off. Can't print")
    }
}

class Print: State {
    func on(printer: Printer) {
        print("It is already on")
    }
    
    func off(printer: Printer) {
        print("Turning it off")
        printer.set(state: Off())
    }
    
    func printDocument(printer: Printer) {
        print("The printer is already printing")
    }
}

class Printer {
    var state: State
    
    init() {
        self.state = On()
    }
    
    func set(state: State) {
        self.state = state
    }
    
    func turnOn() {
        state.on(printer: self)
    }
    
    func turnOff() {
        state.off(printer: self)
    }
    
    func printDocument() {
        state.printDocument(printer: self)
    }
}

let printer = Printer()
printer.printDocument()
printer.turnOff()
printer.turnOn()
printer.turnOn()
printer.turnOff()
printer.turnOff()
printer.turnOn()
printer.turnOff()



