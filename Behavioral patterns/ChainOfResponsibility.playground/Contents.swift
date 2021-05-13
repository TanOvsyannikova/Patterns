
class Enemy {
    let strength = 600
}

protocol MilitaryChain {
    var strength: Int { get }
    var nextRank: MilitaryChain? { get set }
    func shouldDefeatWithStrength(amount: Int)
}

class Soldier: MilitaryChain {
    var strength: Int = 100
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Soldier wins")
        } else {
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class Officer: MilitaryChain {
    var strength: Int = 500
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Officer wins")
        } else {
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class Superhero: MilitaryChain {
    var strength: Int = 1000
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Superhero wins")
        } else {
            print("We can't defeat the enemy")
        }
    }
}

let enemy = Enemy()
let soldier = Soldier()
let officer = Officer()
let superhero = Superhero()

soldier.nextRank = officer
officer.nextRank = superhero

soldier.shouldDefeatWithStrength(amount: 1600)

