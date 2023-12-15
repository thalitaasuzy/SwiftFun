//
//  CirculoBoolean.swift
//  TaskList
//
//  Created by User on 22/09/23.
//
import SwiftUI

struct CirculoBoolean: View {

    let isDone: Bool // Substitua isso pelo estado real da tarefa

var body: some View {

VStack {

if isDone == true{

Circle()

.fill(Color.green)

.frame(width: 20, height: 20)

} else {

Circle()

.fill(Color.red)

.frame(width: 20, height: 20)

}

Text(isDone ? "Concluída" : "Não Concluída")

}

}

}

struct CirculoBoolean_Previews: PreviewProvider {

static var previews: some View {

    CirculoBoolean(isDone: true)

}

}
