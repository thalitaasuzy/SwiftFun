//
//  TaskScreen.swift
//  TaskList
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct Task {
    var id: Int
    var title: String
    var isDone: Bool
    
    init(id: Int, title: String, isDone: Bool) {
        self.id = id
        self.title = title
        self.isDone = isDone
    }
}

    
struct TaskScreen: View {
    
    var tasks: [Task]
    
    init() {
        self.tasks = [
            Task(id: 1, title: "Basketball Train🏀", isDone: false),
            Task(id: 2, title: "Organize Bags🎒", isDone: false),
            Task(id: 3, title: "Code Task's List Program💻", isDone: true)
        ]
    }
    
    mutating func addTask(id: Int, title: String, isDone: Bool) {
        let task = Task(id: id, title: title, isDone: isDone)
        tasks.append(task)
    }
    
    mutating func removeTask(title:String){
        tasks = tasks.filter { $0.title != title}
    }
    
    mutating func markTaskAsDone(id: Int) {
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].isDone = true
        }
    }
    
    mutating func unmarkTaskAsDone(id: Int) {
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].isDone = false
        }
    }
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Tarefas")
                
                    .bold().font(.title)
                VStack{
                    ForEach(tasks, id: \.id) { task in
                        VStack (spacing: 15) {
                            Text(task.title)
                                .font(.headline)
                            
                        }
                    }
                }
                .multilineTextAlignment(.center)
                    .padding()
            }
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y:2)
        .padding(.init(top: 5, leading: 16, bottom: 5, trailing: 16))
    }
}
