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
