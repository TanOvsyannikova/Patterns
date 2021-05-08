protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("swimming professionaly")
    }
}

class NonSwimmer: SwimBehavior {
    func swim() {
        print("can't swim")
    }
}

protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("diving professionally")
    }
}

class NewbieDiver: DiveBehavior {
    func dive() {
        print("diving like a log")
    }
}

class NonDiver: DiveBehavior {
    func dive() {
        print("can't dive")
    }
}

class Human {
//    func swim() {
//        print("Swimming")
//    }
//
//    func dive() {
//        print("Diving")
//    }
    
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(sb: SwimBehavior) {
        self.swimBehavior = sb
    }
    
    func setDiveBehavior(db: DiveBehavior) {
        self.diveBehavior = db
    }
    
    func run() {
        print("Running")
    }
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
}

let human = Human(swimBehavior: ProfessionalSwimmer(), diveBehavior: NonDiver())
//human.setSwimBehavior(sb: ProfessionalSwimmer())
//human.setDiveBehavior(db: NonDiver())

human.performDive()
human.performSwim()
