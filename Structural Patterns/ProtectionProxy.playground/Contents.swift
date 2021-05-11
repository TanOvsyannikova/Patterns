class User {
    let name = "John"
    let pass = "123"
}

protocol ServerProtocol {
    func grandAccess(user: User)
}

class ServerSide: ServerProtocol {
    func grandAccess(user: User) {
        print("Access granted to user with login = \(user.name)")
    }
}

class ServerProxy: ServerProtocol {
    private var server: ServerSide!
    
    func grandAccess(user: User) {
        guard server != nil else {
            print("Access denied")
            return
        }
        server.grandAccess(user: user)
    }
    
    func authenticate(user: User) {
        guard user.pass == "123" else { return }
        print("User authenticated")
        server = ServerSide()
    }
}

let user = User()
let proxy = ServerProxy()

proxy.grandAccess(user: user)
proxy.authenticate(user: user)
proxy.grandAccess(user: user)

