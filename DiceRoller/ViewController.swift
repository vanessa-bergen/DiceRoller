//
//  ViewController.swift
//  DiceRoller
//
//  Created by Vanessa Bergen on 2019-08-27.
//  Copyright © 2019 Vanessa Bergen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceNumberBtn = dropDownBtn()

    var dice = [UIImage?]()
    //make an array of images to shwo the dice
    var diceImage1 = UIImageView()
    var diceImage2 = UIImageView()
    var diceImage3 = UIImageView()
    var diceImage4 = UIImageView()
    var diceImage5 = UIImageView()
    var diceImage6 = UIImageView()
    
    let gradientLayer = CAGradientLayer()
    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Dice!"
        
        self.view.backgroundColor = UIColor.white
        
        let margins = self.view.layoutMarginsGuide
        
        
        
        dice = [nil, nil, nil, nil, nil, nil]
        
        view.setGradientBackground(colorOne: Colours.darkBlue, colorTwo: Colours.blue, colorThree: Colours.pink, colorFour: Colours.orange, colorFive: Colours.yellow)
        
        
        
        
        button.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        button.translatesAutoresizingMaskIntoConstraints = false
       
        
        self.view.addSubview(button)
        
        
        
        button.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
        //button.centerYAnchor.constraint(equalTo: margins.centerYAnchor, constant: 40).isActive = true
        button.topAnchor.constraint(equalTo: margins.topAnchor, constant: 270).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button.setTitle("Roll Dice", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        //rounding the button
        button.layer.cornerRadius = 6
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(rollDice), for: .touchUpInside)
        
        //adding the gradient layer to both buttons
        //since using constraints and not the auto layout, the bounds have 0 width and height
        /*
        print(button.bounds)
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        gradientLayer.colors = [UIColor.lightGray.cgColor, UIColor.darkGray.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.cornerRadius = 6
        button.layer.insertSublayer(gradientLayer, at: 0)
         */
        button.setGradientButtons(colorOne: Colours.blue, colorTwo: Colours.darkBlue)
        
        
        
        
        diceImage1.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        diceImage1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(diceImage1)
        
        diceImage1.centerXAnchor.constraint(equalTo: margins.centerXAnchor, constant: -80).isActive = true
        diceImage1.topAnchor.constraint(equalTo: margins.topAnchor, constant:  100).isActive = true
        diceImage1.widthAnchor.constraint(equalToConstant: 60).isActive = true
        diceImage1.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        diceImage2.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        diceImage2.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(diceImage2)
        
        diceImage2.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
        diceImage2.topAnchor.constraint(equalTo: margins.topAnchor, constant: 100).isActive = true
        diceImage2.widthAnchor.constraint(equalToConstant: 60).isActive = true
        diceImage2.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        diceImage3.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        diceImage3.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(diceImage3)
        
        diceImage3.centerXAnchor.constraint(equalTo: margins.centerXAnchor, constant: 80).isActive = true
        diceImage3.topAnchor.constraint(equalTo: margins.topAnchor, constant: 100).isActive = true
        diceImage3.widthAnchor.constraint(equalToConstant: 60).isActive = true
        diceImage3.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        diceImage4.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        diceImage4.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(diceImage4)
        
        diceImage4.centerXAnchor.constraint(equalTo: margins.centerXAnchor, constant: -80).isActive = true
        diceImage4.topAnchor.constraint(equalTo: margins.topAnchor, constant: 180).isActive = true
        diceImage4.widthAnchor.constraint(equalToConstant: 60).isActive = true
        diceImage4.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        diceImage5.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        diceImage5.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(diceImage5)
        
        diceImage5.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
        diceImage5.topAnchor.constraint(equalTo: margins.topAnchor, constant: 180).isActive = true
        diceImage5.widthAnchor.constraint(equalToConstant: 60).isActive = true
        diceImage5.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        diceImage6.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        diceImage6.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(diceImage6)
        
        diceImage6.centerXAnchor.constraint(equalTo: margins.centerXAnchor, constant: 80).isActive = true
        diceImage6.topAnchor.constraint(equalTo: margins.topAnchor, constant: 180).isActive = true
        diceImage6.widthAnchor.constraint(equalToConstant: 60).isActive = true
        diceImage6.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        //adding dropdown button
        //for the bring to front to work, this has to be added after the dice image views
        diceNumberBtn = dropDownBtn.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        diceNumberBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(diceNumberBtn)
        diceNumberBtn.setTitle("# of Dice", for: .normal)
        diceNumberBtn.layer.cornerRadius = 6
        //diceNumberBtn.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        diceNumberBtn.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
        diceNumberBtn.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20).isActive = true
        diceNumberBtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
        diceNumberBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        diceNumberBtn.dropView.dropDownOptions = ["1", "2", "3", "4", "5", "6"]
        
        diceNumberBtn.setGradientButtons(colorOne: Colours.blue, colorTwo: Colours.darkBlue)
        
    }
    
    @objc func rollDice() {
        
        for i in 0...5 {
            let diceImg: UIImage?
            let value = Int.random(in: 1...6)
            print(value)
            print(i)
            switch value {
            case 1:
                diceImg = UIImage(named: "Dice1")
            case 2:
                diceImg = UIImage(named: "Dice2")
            case 3:
                diceImg = UIImage(named: "Dice3")
            case 4:
                diceImg = UIImage(named: "Dice4")
            case 5:
                diceImg = UIImage(named: "Dice5")
            case 6:
                diceImg = UIImage(named: "Dice6")
            default:
                diceImg = nil
            }
            
            dice[i] = diceImg!
        }
        
        //will have to chang to set to nil when there are less than 6 dice
        //maybe add a loop so that when the number of dice selected chages it will check if i > num set the array value to nil
        if let diceNum = Int((diceNumberBtn.titleLabel?.text)!) {
            for i in 0...5 {
                if i > diceNum - 1 {
                    dice[i] = nil
                }
            }
        }
        diceImage1.image = dice[0]
        diceImage2.image = dice[1]
        diceImage3.image = dice[2]
        diceImage4.image = dice[3]
        diceImage5.image = dice[4]
        diceImage6.image = dice[5]
        
        
    }


}

protocol dropDownProtocol {
    func dropDownPressed(string: String)
}
class dropDownBtn: UIButton, dropDownProtocol {
    func dropDownPressed(string: String) {
        //set the title of the button to the dropdown option selected
        self.setTitle(string, for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        self.titleLabel?.textColor = UIColor.white
        self.dismissDropDown()
    }
    
    var dropView = dropDownView()
    var height = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.lightGray
        
        dropView = dropDownView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        dropView.delegate = self
        dropView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func didMoveToSuperview() {
        if self.superview != nil {
            self.superview?.addSubview(dropView)
            self.superview?.bringSubviewToFront(dropView)
            
            //this will open the table view from beneath the button
            //here the self is referencing the button
            dropView.topAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            dropView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            dropView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
            //don't want to activate the height contrainst just yet
            height = dropView.heightAnchor.constraint(equalToConstant: 0)
        }
    }
    
    //this will  let us know if the dropdown is open or not
    var isOpen = false
    //when the button is pressed
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isOpen == false {
            isOpen = true
            //activate the height
            //make sure its deactivated before activating
            NSLayoutConstraint.deactivate([self.height])
            //want to create a threshold for the height so that 150 is the largest it will get but it can be smaller if there are only a few options
            if self.dropView.tableView.contentSize.height > 150 {
                self.height.constant = 150
            }
            else {
                self.height.constant = self.dropView.tableView.contentSize.height
            }
            NSLayoutConstraint.activate([self.height])
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
                //this will apply the activated constraints and animate them
                self.dropView.layoutIfNeeded()
                //this will make it move down
                self.dropView.center.y += self.dropView.frame.height / 2
            }, completion: nil)
        }
        else {
            isOpen = false
            
            NSLayoutConstraint.deactivate([self.height])
            self.height.constant = 0
            NSLayoutConstraint.activate([self.height])
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
                //this will make it move up
                self.dropView.center.y -= self.dropView.frame.height / 2
                //this will apply the activated constraints and animate them
                self.dropView.layoutIfNeeded()
                
            }, completion: nil)
        }
    }
    
    func dismissDropDown() {
        isOpen = false
        NSLayoutConstraint.deactivate([self.height])
        self.height.constant = 0
        NSLayoutConstraint.activate([self.height])
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            //this will make it move up
            self.dropView.center.y -= self.dropView.frame.height / 2
            //this will apply the activated constraints and animate them
            self.dropView.layoutIfNeeded()
            
        }, completion: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class dropDownView: UIView, UITableViewDelegate, UITableViewDataSource {
    var dropDownOptions = [String]()
    
    var tableView = UITableView()
    
    var delegate: dropDownProtocol!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableView.layer.cornerRadius = 6
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(tableView)
        
        
        
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dropDownOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.text = dropDownOptions[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        if indexPath.row % 2 == 0 {
            cell.setGradientButtons(colorOne: UIColor.white, colorTwo: Colours.blue)
            //cell.backgroundColor = Colours.blue
        }
        else {
            //cell.backgroundColor = Colours.darkBlue
            cell.setGradientButtons(colorOne: UIColor.white, colorTwo: Colours.darkBlue)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate.dropDownPressed(string: dropDownOptions[indexPath.row])
        
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}
