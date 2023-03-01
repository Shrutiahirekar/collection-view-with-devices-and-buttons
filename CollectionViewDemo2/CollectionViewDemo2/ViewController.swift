//
//  ViewController.swift
//  CollectionViewDemo2
//
//  Created by Skroman iOS Developer on 22/02/23.
//

import UIKit

class ViewController: UIViewController{
    
    var device = ["Device 1", "Device 2"]
    
    var Button1 = "12345"
    var Button2 = "123456"
    
    var array1 = [String]()
    var array2 = [String]()
    
    var clicked_array = [String]()
    
    var flag : Int!
    
    @IBOutlet weak var CollectionView_One: UICollectionView!
    @IBOutlet weak var CollectionView_Two: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let test_button1 = Button1.map(String.init)
//        let test_button2 = Button2.map(String.init)
//        array1 = test_button1
//        array2 = test_button2
        
        CollectionView_One.delegate = self
        CollectionView_One.dataSource = self
        CollectionView_One.reloadData()
        
        CollectionView_Two.delegate = self
        CollectionView_Two.dataSource = self
        CollectionView_Two.reloadData()
    }
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == CollectionView_One {
            
            return device.count
            
        }
        
        else {
            
            return clicked_array.count
            
        }
        
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == CollectionView_One {
            
            let cell = CollectionView_One.dequeueReusableCell(withReuseIdentifier: "cell_one", for: indexPath) as! CollectionViewCell_One
            
            cell.label.text = device[indexPath.row]
            
            return cell
            
        }
        
        
        else {
            
            let cell_two = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_two", for: indexPath) as! CollectionViewCell_Two
            
            
            return cell_two
            
        }
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    
        print(indexPath.row)
        
        
        if collectionView == CollectionView_One{
            
            let first_cell = CollectionView_One.cellForItem(at: indexPath) as? CollectionViewCell_One
            
            
            
            var index = indexPath.row + 1
            
            print(index)
            
            if index == 1 {
                let test_button1 = Button1.map(String.init)
                
                clicked_array = test_button1
                
                CollectionView_Two.reloadData()
                print(clicked_array)
                
            }
            else {
                
                
                let test_button2 = Button2.map(String.init)
                
                clicked_array = test_button2
                CollectionView_Two.reloadData()
                print(clicked_array)
                
            }
            
            
            
        }
        
        
        
    }
    
    
    
    
}


