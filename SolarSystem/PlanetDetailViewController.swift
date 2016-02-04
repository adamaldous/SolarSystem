//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Adam Aldous on 2/3/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImageView: UIImageView!
    
    @IBOutlet weak var diameterLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var lengthOfDayLabel: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViewWithPlanet(self.planet!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateViewWithPlanet(planet:Planet) {
        // set up labels and image
        diameterLabel.text = "\(planet.diameter)"
        distanceLabel.text = "\(planet.millionKMsFromSun)"
        lengthOfDayLabel.text = "\(planet.dayLength)"
//        planetImageView.imageView?.image = UIImage(named:(planet.imageName))
//        planetImageView.image =
        planetImageView.image = UIImage(named: planet.imageName)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
