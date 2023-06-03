//
//  CoinImageService.swift
//  Crypto
//
//  Created by Mikhail Ustyantsev on 02.06.2023.
//

import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    private let coin: Coin
    private let fileManager = LocalFileManager.instance
    private let folderName = "coin_images"
    
    init (coin: Coin) {
        self.coin = coin
        
    }
    
    private func getCoinImage() {
        if let savedImage = fileManager.getImage(imageName: coin.id, folderName: folderName) {
            image = savedImage
            print("Retrived image from File Manager!")
        }
    }
    
    private func downloadCoinImage() {
        print("Downloading image now")
        guard let url = URL(string: coin.image) else {
            return
        }
        
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
    
}
