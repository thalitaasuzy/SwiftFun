import Foundation

class Contato {
    var nome: String
    var telefone: String
    var email: String
    
    init(nome: String, telefone: String, email: String) {
        self.nome = nome
        self.telefone = telefone
        self.email = email
    }
}

class Agenda {
    var contatos: [Contato]
    
    init() {
        self.contatos = []
    }
    
    func adicionaContato(nome: String, telefone: String, email: String) {
        let contato = Contato(nome: nome, telefone: telefone, email: email)
        contatos.append(contato) //função que implementa na Array
    }
    
    func removeContato(nome: String) {
        contatos = contatos.filter { $0.nome != nome } //$ -> substitui nome do parâmetro; 0 -> indica posição
    }

    func editaContato(nome: String, novoTelefone: String, novoEmail: String) {
        if let contato = contatos.first(where: { $0.nome == nome }) {
            contato.telefone = novoTelefone
            contato.email = novoEmail
        }
    }
    
    func listaContatos() {
        print("Lista de Contatos:")
        for contato in contatos {
            print("Nome: \(contato.nome), Telefone: \(contato.telefone), Email: \(contato.email)")
        }
    }
    
    func buscarContatos(nome: String) {
        contatos = contatos.filter { $0.nome == nome}
        listaContatos()
    }
    
    func listaContatosEmOrdemAlfabetica() {
        contatos.sort(by: { contato1, contato2 in
            return (contato1.nome > contato2.nome)
        })
        listaContatos()
    }
}

let minhaAgenda = Agenda()
minhaAgenda.adicionaContato(nome: "Thalita", telefone: "1234", email: "thali@gmail.com")
minhaAgenda.adicionaContato(nome: "Sure", telefone: "5678", email: "suree@gmail.com")
minhaAgenda.adicionaContato(nome: "Kailane", telefone: "9101", email: "kaigomes@gmail.com")
minhaAgenda.listaContatos()
minhaAgenda.buscarContatos(nome: "Thalita")
minhaAgenda.listaContatosEmOrdemAlfabetica()


