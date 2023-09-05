import UIKit

class Pai {
    //Essa é uma SuperClasse
    var nome: String = "Paulo";
    var sobrenome: String = "Sampaio";
    var anoNascimento: Int = 1980;
    var idade: Int {
            return 2023 - anoNascimento
    }
    var interesses: Array = ["livros", "esporte", "culinária"]
    func saudacao() -> String{
        return "Bom dia! Me chamo \(nome) \(sobrenome). Tenho \(idade). Gosto de \(interesses)"
    }
}
 
let pai0 = Pai()
print(pai0.saudacao())


class Filha: Pai {
    //Essa é uma SubClasse
}

let filha0 = Filha()
filha0.nome = "Thalita"
filha0.anoNascimento = 2007
filha0.interesses = ["livros", "esporte","música"]
print(filha0.saudacao())


