//
//  OffersOnCardViewController.swift
//  BankApp
//
//  Created by apple on 3/19/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit






class OffersOnCardViewController: UIViewController {
    
    @IBOutlet weak var offersView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.title = "Offers"
        //self.view.backgroundColor = .lightGray
        
        
        let nib = UINib(nibName: "OfferCollectionViewCell", bundle: nil)
        
        offersView.register(nib, forCellWithReuseIdentifier: "offercell")
              
              
    }
    

   

}

extension OffersOnCardViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
       return CGSize(width: 200.0, height: 200.0)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = offersView.dequeueReusableCell(withReuseIdentifier: "offercell", for: indexPath) as? OfferCollectionViewCell else{
            return UICollectionViewCell()
        }
        //cell.offerImage.image = UIImage(named: "bakground")
        
        return cell
    }
    
    
    
    
    
    
}
