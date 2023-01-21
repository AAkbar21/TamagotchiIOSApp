//
//  Tamagotchi.swift
//  TamagotchiIOSApp
//
//  Created by Akbar, Abdullah (RCH) on 14/01/2023.
//

import Foundation

class Tamagotchi: ObservableObject {
    @Published private var name: String
    @Published private var hunger: Int
    @Published private var weight: Int
    @Published private var happy: Int
    @Published private var hatched: Bool
    @Published private var age: Int
    @Published private var illness: Bool
    
    init(name: String) {
        self.name = name
        self.hunger = 10
        self.weight = 5
        self.happy = 5
        self.age = 0
        self.hatched = false
        self.illness = false
    }
    
    func displayTamagotchiStats() -> String {
        return """
                Name: \(self.name)
                Hunger: \(hunger)
                Weight: \(weight)
                Happy: \(happy)
                Hatched: \(hatched)
                Illness: \(illness)
                Age: \(age)
               """
    }
    
    func feedTamagotchi() {
        print("Feeding tamagotchi")
        self.hunger -= 1
        self.happy += 1
        self.weight += 1
    }
    
    func getillness() {
        illness = true
        print("Tamagotchi has been cured")  
    }
    
    func giveMedicine() -> String {
        happy += 1
        illness = false
        return "Tamagotchi has been cured"
    }
    
    func goSleep() {
        happy += 1
        hunger -= 1
        age += 1
        
    }
    
}
