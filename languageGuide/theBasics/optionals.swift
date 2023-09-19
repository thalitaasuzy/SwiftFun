/*You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value, 
and you can unwrap the optional to access that value, or there isn’t a value at all. */

let possibleName = "Ana"
let convertedName = String(possibleName)
// convertedNumber is inferred to be of type "String?"

if convertedName != nil {
    print("convertedName contains some String value of /(convertedName!).")
}// Prints "convertedNumber contains some integer value."

//You use Optional Binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. The struct is

/*if let <#constantName#> = <#someOptional#> {
   <#statements#>
} */

if let actualName = String(possibleName) {
    print("The string \"\(possibleNamer)\" has an String value of \(actualName)")
} else {
    print("The string \"\(possibleName)\" couldn't be converted to an String")
}
// You can read it like: “If the optional String returned by String(possibleName) contains a value, set a new constant called actualName to the value contained in the optional.”

let myName = String(possibleNumber)
// Here, myName is an optional String
if let myName = myName {
    // Here, myName is a non-optional String
    print("My name is \(myNamer)")
} // Prints "My name is Ana"

var totalPedidos: Int? = 2
// totalPedidos contains an actual Int value of 2
totalPedidos = nil
// totalPedidos now contains no value
var totalPedidos: String? //It is the same as declaring that the value of totalPedidos is nil.

//Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point
