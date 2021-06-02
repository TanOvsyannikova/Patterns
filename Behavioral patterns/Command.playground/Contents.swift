class Account {
    var accountName: String
    var balance: Int
    
    init(accountName: String, balance: Int) {
        self.accountName = accountName
        self.balance = balance
    }
}

protocol Command {
    func execute()
    func cancel()
    var isComplete: Bool { get set }
}

class Deposit: Command {
    private var _account: Account
    private var _amount: Int
    var isComplete = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        _account.balance += _amount
        isComplete = true
    }
    
    func cancel() {
        _account.balance -= _amount
        isComplete = false
    }
}

class Withdraw: Command {
    private var _account: Account
    private var _amount: Int
    var isComplete = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        if _account.balance >= _amount {
            _account.balance -= _amount
            isComplete = true
        } else {
            print("Not enough money")
        }
    }
    
    func cancel() {
        _account.balance += _amount
        isComplete = false
    }
}

class TransactionManager {
    static let shared = TransactionManager()
    
    private init() {}
    private var _transactions: [Command] = []
    
    var pendingTransactions: [Command] {
        get {
            return self._transactions.filter{ $0.isComplete == false }
        }
    }
    
    func addTransactions(command: Command) {
        self._transactions.append(command)
    }
    
    func processingTransactions() {
        _transactions.filter{ $0.isComplete == false }.forEach{ $0.execute() }
    }
    
    func deleteLastTransaction() {
        _transactions.filter{ $0.isComplete == true }.last?.cancel()
    }
    
    func executeLastCanceled() {
        _transactions.filter{ $0.isComplete == false }.last?.execute()
    }
}

let account = Account(accountName: "First", balance: 1000)
let transactionManager = TransactionManager.shared
transactionManager.addTransactions(command: Deposit(account: account, amount: 1000))
transactionManager.addTransactions(command: Withdraw(account: account, amount: 300))
transactionManager.addTransactions(command: Deposit(account: account, amount: 100))


transactionManager.pendingTransactions
account.balance

transactionManager.processingTransactions()
account.balance

transactionManager.deleteLastTransaction()
transactionManager.deleteLastTransaction()
transactionManager.deleteLastTransaction()

account.balance

transactionManager.executeLastCanceled()
transactionManager.executeLastCanceled()
transactionManager.executeLastCanceled()


account.balance

