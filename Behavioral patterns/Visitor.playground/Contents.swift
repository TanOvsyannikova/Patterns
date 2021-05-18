protocol PlanetVisitor {
    func visit(planet: Earth)
    func visit(planet: Mars)
    func visit(planet: Jupiter)
    func visit(planet: Mercury)
}

protocol Planet {
    func accept(visitor: PlanetVisitor)
}

final class Mercury: Planet {
    func accept(visitor: PlanetVisitor) {
        visitor.visit(planet: self)
    }
}

final class Earth: Planet {
    func accept(visitor: PlanetVisitor) {
        visitor.visit(planet: self)
    }
}

final class Mars: Planet {
    func accept(visitor: PlanetVisitor) {
        visitor.visit(planet: self)
    }
}

final class Jupiter: Planet {
    func accept(visitor: PlanetVisitor) {
        visitor.visit(planet: self)
    }
}

final class TheVisitor: PlanetVisitor {
    var name = ""

    func visit(planet: Earth) { name = "Earth" }
    func visit(planet: Mars) { name = "Mars" }
    func visit(planet: Jupiter) { name = "Jupiter" }
    func visit(planet: Mercury) { name = "Mercury" }
}


let planets: [Planet] = [Earth(), Mars(), Jupiter(), Mercury()]

let names = planets.map { (planet: Planet) -> String in
    let visitor = TheVisitor()
    planet.accept(visitor: visitor)

    return visitor.name
}

print(names)
