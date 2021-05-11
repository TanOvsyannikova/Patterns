class FruitShop {
    func buyFruit() -> String {
        return "Fruit"
    }
}

class ButcherShop {
    func buyMeat() -> String {
        return "Meat"
    }
}

class PastryShop {
    func buyPastry() -> String {
        return "Pastry"
    }
}

class CandyShop {
    func buyCandies() -> String {
        return "Candies"
    }
}

class BakeryShop {
    func buyBread() -> String {
        return "Bread"
    }
}

//Facade
class SuperMarket {
    private let fruitShop = FruitShop()
    private let butcherShop = ButcherShop()
    private let pastryShop = PastryShop()
    private let candyShop = CandyShop()
    private let bakeryShop = BakeryShop()
    
    func buyProducts() -> String {
        var products = ""
        products += fruitShop.buyFruit() + ", "
        products += butcherShop.buyMeat() + ", "
        products += pastryShop.buyPastry() + ", "
        products += candyShop.buyCandies() + ", "
        products += bakeryShop.buyBread()
        return "I bought: " + products
    }
}

let sm = SuperMarket()
sm.buyProducts()
