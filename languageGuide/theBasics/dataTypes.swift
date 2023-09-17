//Tipos Numéricos
var num: Int = -2 //Representa números inteiros, positivos e negativos, sem parte decimal.
var idade: UInt = 16 //Representa números inteiros não negativos (sem sinal).
var pi: Double = 3,1415926 //Representa números de ponto flutuante de precisão dupla(pelo menos 15 dígitos significativos).
var dinheiro: Float = 21,70 //Representa números de ponto flutuante de precisão simples(pelo menos 6 dígitos significativos).

//Tipos de Texto
var saudacao: String = "Olá, seja bem vindo!" //Representa uma sequência de caracteres de texto.
var firstLetter: Character = "T" //Representa um único caractere.

//Tipos Lógicos
var myBool = true //Representa valores booleanos, ou seja, true (verdadeiro) ou false (falso).
 
//Tipos de Coleções

var arrayDefrutas = ["maça", "pera", "banana"] //Representa uma coleção ordenada de elementos do mesmo tipo.

var dicionarioDeProfissoes = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ] //Dictionary: Representa uma coleção de pares chave-valor.

//Tipos Opcionais: Permite representar valores que podem estar ausentes (nil).
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
  greeting = "Hello, dear!"
} //Output: "Hello, dear!"

//Tipos de Função:
func cumprimentar(nome: String) -> Void {
    print("Olá, \(nome)! Bem-vindo!")
} //Void: Representa uma função que não possui argumentos e não retorna um valor. 
//Em Swift, se não for especificado um tipo de retorno, a função é automaticamente considerada como tendo um retorno do tipo Void, podendo ser escrita: 
func cumprimentar(nome: String) {
    print("Olá, \(nome)! Bem-vindo!")
} 

//Tipos de Estruturas: Permite a criação de tipos de dados personalizados, como uma estrutura.
struct Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
}

//Tipos de Classes: Permite a criação de tipos de dados personalizados, que suportam herança.
class Pessoa {
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    func cumprimentar() {
        print("Olá, meu nome é \(nome) e tenho \(idade) anos.")
    }
}

//Tipos de Enumerações: Permite a criação de tipos de dados que podem ter um de vários casos (valores).
// Definindo uma enumeração chamada "DiaDaSemana"
enum DiaDaSemana {
    case segunda
    case terca
    case quarta
    case quinta
    case sexta
    case sabado
    case domingo
}

// Usando a enumeração
var dia = DiaDaSemana.quarta
dia = .terca

// Exemplo de switch com enumeração
switch dia {
case .segunda, .terca, .quarta, .quinta, .sexta:
    print("É um dia de semana.")
case .sabado, .domingo:
    print("É um fim de semana.")
}

//Tipos de Tuplas: Permite agrupar valores de tipos diferentes.
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String),

//Tipos de Closures: Representa um bloco de código que pode ser armazenado e passado como um valor.
let saudacao = {
    print("Olá! Esta é uma closure.")
}
saudacao() // Chamada da closure

let somar: (Int, Int) -> Int = { (a, b) in
    return a + b
}

let resultado = somar(3, 5)
print(resultado) // Output: 8


//Tipos de Protocolos: Define um conjunto de requisitos que as classes ou estruturas podem adotar. Funciona como uma classe abstrata em Java.
// Definindo um protocolo chamado "Mensuravel"
protocol Mensuravel {
    var comprimento: Double { get }
    var largura: Double { get }
    
    func area() -> Double
}

// Uma classe "Retangulo" que adota o protocolo "Mensuravel"
class Retangulo: Mensuravel {
    var comprimento: Double
    var largura: Double
    
    init(comprimento: Double, largura: Double) {
        self.comprimento = comprimento
        self.largura = largura
    }
    
    func area() -> Double {
        return comprimento * largura
    }
}
