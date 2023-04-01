//
//  BudgetListViewModel.swift
//  BudgetApp
//
//  Created by Sydney Chapman on 3/31/23.
//

import Foundation
import SwiftyJSON
import Combine

final class BudgetListViewModel: ObservableObject {
    @Published var budgets: [Budget] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        getBudgets()
    }
    
    func getBudgets() {
//        guard let path = Bundle.main.path(forResource: "budgets", ofType: "json") else {
//            print("Invalid JSON file")
//            return
//        }
//
//        let url = URL(fileURLWithPath: path)
//        do {
//            let data = try Data(contentsOf: url)
//            let json = try JSON(data: data)
//        } catch {
//            print("Error retreving JSON data")
//        }
        
        guard let url = URL(string: "https://drive.google.com/file/d/1Nzbj5XkglxuWfmaeufKmA3fsdVFR0B0C/view?usp=share_link") else {
            print("Invalid Budget URL")
            return
        }
        
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { (data, response) -> Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    dump(response)
                    throw URLError(.badServerResponse)
                }
                
                return data
            }
            .decode(type: [Budget].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("Error fetching budgets:", error.localizedDescription)
                case .finished:
                    print("Finished fetching budgets")
                }
            } receiveValue: { [weak self] result in
                self?.budgets = result
                //dump(self?.transactions)
            }
            .store(in: &cancellables)
    }
    
    
    
}
