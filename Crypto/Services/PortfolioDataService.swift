//
//  PortfolioDataService.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 17.06.2023.
//

import Foundation
import CoreData

class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName = "PortfolioContainer"
    private let entityName = "PortfolioItem"
    
    @Published var savedEntities: [PortfolioItem] = []
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading Core Data! \(error)")
            }
            self.getPortfolio()
        }
    }
    
    //MARK: - Public methods
    
    func updatePortfolio(coin: Coin, amount: Double) {
        //check if coin is already in portfolio
        if let entity = savedEntities.first(where: { $0.coinID == coin.id }) {
            
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                delete(entity: entity)
            }
            
        } else {
            add(coin: coin, amount: amount)
        }
        
       
        
    }
    
    //MARK: - Private methods
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioItem>(entityName: entityName)
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
           print("Error fetching Portfolio Entities. \(error)")
        }
    }
    
    private func add (coin: Coin, amount: Double) {
        let entity = PortfolioItem(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        applyChanges()
    }
    
    
    private func update(entity: PortfolioItem, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    
    private func delete(entity: PortfolioItem) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving to Core Data. \(error)")
        }
    }
    
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
    
    
    
}
