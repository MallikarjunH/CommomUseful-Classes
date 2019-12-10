//
//  CollectionView_Extension.swift
//  Test
//
//  Created by mallikarjun on 10/12/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//




//I make use of the backgroundView in an extension as such:


extension UICollectionView {

    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .black
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()

        self.backgroundView = messageLabel;
    }

    func restore() {
        self.backgroundView = nil
    }
}

//and I use it as such:

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

    if (self.movies.count == 0) {
        self.collectionView.setEmptyMessage("Nothing to show :(")
    } else {
        self.collectionView.restore()
    }

    return self.movies.count
}
