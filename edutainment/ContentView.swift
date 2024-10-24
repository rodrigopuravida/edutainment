//
//  ContentView.swift
//  edutainment
//
//  Created by Rodrigo Carballo on 10/21/24.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selectedChoice: Int = 7
    let choices = [3, 5, 7]
    
    @State private var tableChosen: String?
    
    @State  var answer: String
    
    @State var answerArray: [Int] = []
    
    var body: some View {
        VStack {
        
            Text("Multiply Time")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Select Number of Questions")
            
            Picker("Select the number of Questions", selection: $selectedChoice) {
                ForEach(choices, id: \.self) { choice in
                    Text("\(choice)").tag(choice)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            
            Text("Select a Table below to start")
                .font(.subheadline)
                .padding()
            
            HStack {
                Button(action: {
                    tableChosen = "1"
                }) {
                    Text("1")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {
                    tableChosen = "2"
                    //calculateMultiplication(numberChosen: selectedChoice)
                }) {
                    Text("2")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {
                    tableChosen = "3"
                    
                    answerArray = calculateMultiplication(numberChosen: selectedChoice)
                    print(selectedChoice)
                    print(answerArray)
                }) {
                    Text("3")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
            }
            
            HStack {
                Button(action: {
                    tableChosen = "4"
                }) {
                    Text("4")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {tableChosen = "5"}) {
                    Text("5")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {tableChosen = "6"}) {
                    Text("6")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
            }
            
            HStack {
                Button(action: {tableChosen = "7"}) {
                    Text("7")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {tableChosen = "8"}) {
                    Text("8")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {tableChosen = "9"}) {
                    Text("9")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
            }
            
            HStack {
                Button(action: {tableChosen = "10"}) {
                    Text("10")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {tableChosen = "11"}) {
                    Text("11")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
                Spacer()
                Button(action: {tableChosen = "12"}) {
                    Text("12")
                        .font(.headline)
                }
                .frame(width: 75, height: 75)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Capsule())
            }
            
            VStack {
                ForEach(0..<answerArray.count, id: \.self) {
                        Text("\(answerArray[$0])")
                }
            }
            
            Spacer()
        }
        .padding()
    }
    
    func calculateMultiplication(numberChosen: Int?) -> [Int] {
        print("inside Method")
        print(numberChosen)
        var returnArray : [Int] = []
        
        for _ in 1...numberChosen! {
            returnArray.append(Int.random(in: 1...12))
        }
        return returnArray
    
    }
    
}

#Preview {
    ContentView(answer: "")
}
