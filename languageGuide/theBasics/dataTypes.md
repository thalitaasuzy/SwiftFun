<h1> Tipos de Dados em Swift </h1>

<h6>Tipos Numéricos</h6>
<p>Representam valores númericos do tipo Inteiro ou Ponto Flutuante</p>

```swift
var num: Int = -2 //Números inteiros, positivos e negativos, sem parte decimal.
var idade: UInt = 16 //Números inteiros não negativos (sem sinal).
var pi: Double = 3,1415926 //Números de ponto flutuante de precisão dupla(pelo menos 15 dígitos significativos).
var dinheiro: Float = 21,70 //Números de ponto flutuante de precisão simples(pelo menos 6 dígitos significativos).
```
<h6>Tipos de Texto</h6>
<p>Referem-se aos diferentes tipos de dados usados para representar texto ou sequências de caracteres. </p>

```swift 
var saudacao: String = "Olá, seja bem vindo!" //Representa uma sequência de caracteres de texto.
var firstLetter: Character = "T" //Representa um único caractere.
```
<h6>Tipos Lógicos</h6>
<p>Representa valores booleanos, ou seja, <strong>true</strong> ou <strong>false</strong>.</p>

```swift
let orangesAreOrange = true
 ```

<h6>Tipos de Coleções</h6>
<p>Referem-se a estruturas de dados que permitem armazenar e organizar múltiplos valores em um único contêiner</p>

```swift
// Array: coleção ordenada de elementos do mesmo tipo.
var frutas = ["maça", "pera", "banana"] 

//Dictionary: Representa uma coleção de pares chave-valor.
var profissoes = [ 
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ] 
```

<h6>Tipos Opcionais</h6> 
<p>Permitem representar a ausência de um valor em uma variável ou constante. Em outras palavras, um optional é uma forma de indicar que uma variável pode estar vazia, ou seja, não contém nenhum valor. </p> 

```swift
//Valor presente
var optionalName: String? = "José Bezerra"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
  greeting = "Hello, friend!"
} //Output: "Hello, José Bezerra"

//Valor ausente
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
  greeting = "Hello, friend!"
} //Output: "Hello, friend!"
```
<h6>Tipos de Funções</h6>
<p>Não recebem nenhum argumento e não retornam nenhum valor.</p>

```swift
func saudacao() {
    print("Olá!")
}
```

<p>Recebem um ou mais argumentos como entrada e podem ou não retornar um valor.</p>

```swift
func saudacao(nome: String) {
    print("Olá, \(nome)!")
}
```

<p>Recebem argumentos e retornam um valor.</p>

```swift
func soma(a: Int, b: Int) -> Int {
    return a + b
}
```

<h6>Structs</h6>
<p>Permitem a criação de tipos de dados personalizados, como uma estrutura.</p>


```swift
struct Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
}
```

<h6>Classes</h6>
<p>Permitem a criação de tipos de dados personalizados, que suportam herança.</p>

```swift
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
```

<h6>Enum</h6>
<p>Permite a criação de tipos de dados que podem ter um de vários casos (valores).</p>

```swift
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

```

<h6>Tuplas</h6>
<p>Permitem agrupar valores de tipos diferentes.</p>

```swift
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String),
```

<h6>Closures</h6>
<p>Representa um bloco de código que pode ser armazenado e passado como um valor. Essas funções capturam e mantêm referências para variáveis e constantes do contexto ao redor.</p>

```swift
let saudacao = {
    print("Olá! Esta é uma closure.")
}
saudacao() // Chamada da closure

let somar: (Int, Int) -> Int = { (a, b) in
    return a + b
}

let resultado = somar(3, 5)
print(resultado) // Output: 8
```

<h6>Protocols</h6>
<p>Define um conjunto de requisitos que as classes ou estruturas podem adotar. Semelhante à uma classe abstrata em Java.</p>

```swift
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
```

