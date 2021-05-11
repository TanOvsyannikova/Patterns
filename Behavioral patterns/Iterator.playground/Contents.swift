class Driver {
    let isGoodDriver: Bool
    let name: String
    
    init(isGood: Bool, name: String) {
        self.isGoodDriver = isGood
        self.name = name
    }
}

class Car {
    var goodDriverIterator: GoodDriverIterator {
        return GoodDriverIterator(drivers: owners)
    }
    private let owners = [Driver(isGood: true, name: "Mark"),
                          Driver(isGood: false, name: "Maria"),
                          Driver(isGood: true, name: "Max"),
                          Driver(isGood: false, name: "Morgan")]
}

extension Car: Sequence {
    func makeIterator() -> GoodDriverIterator {
        return GoodDriverIterator(drivers: owners)
    }
}

class GoodDriverIterator: IteratorProtocol {
    private let drivers: [Driver]
    private var current = 0
    
    init(drivers: [Driver]) {
        self.drivers = drivers.filter{ $0.isGoodDriver }
    }
    
    func next() -> Driver? {
        defer {
            current += 1
        }
        return drivers.count > current ? drivers[current] : nil
    }
    
    func allDrivers() -> [Driver] {
        return drivers
    }
}

var car = Car()
let goodDriverIterator = car.goodDriverIterator.next()

let goodDriverIteratorViaSequence = car.makeIterator().next()
let allGoodDriversIteratorViaSequence = car.makeIterator().allDrivers()


