//
//  UpdateViewController.swift
//  ConteraCompanyTask
//
//  Created by Student P_08 on 25/08/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class UpdateViewController: UIViewController
{

    
    @IBOutlet weak var ScheduleNameU: UITextField!
    @IBOutlet weak var ScheduleTimeU: UITextField!
    
    var WeakDataArray = [String]()
    var WeakDataAddArray = [String]()
    
    var evday:Int!
    var mnday:Int!
    
    var sname:String?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ScheduleNameU.text = sname
        
        evday = 0
        mnday = 0
        
        MondayU.layer.cornerRadius = 15
        MondayU.layer.borderWidth = 2
        MondayU.layer.borderColor = UIColor.red.cgColor
        MondayU.backgroundColor = UIColor.white
        
        TuesdayU.layer.cornerRadius = 15
        TuesdayU.layer.borderWidth = 2
        TuesdayU.layer.borderColor = UIColor.red.cgColor
        TuesdayU.backgroundColor = UIColor.white

        WednesdayU.layer.cornerRadius = 15
        WednesdayU.layer.borderWidth = 2
        WednesdayU.layer.borderColor = UIColor.red.cgColor
        WednesdayU.backgroundColor = UIColor.white

        ThursdayU.layer.cornerRadius = 15
        ThursdayU.layer.borderWidth = 2
        ThursdayU.layer.borderColor = UIColor.red.cgColor
        ThursdayU.backgroundColor = UIColor.white

        FridayU.layer.cornerRadius = 15
        FridayU.layer.borderWidth = 2
        FridayU.layer.borderColor = UIColor.red.cgColor
        FridayU.backgroundColor = UIColor.white

        SaturdayU.layer.cornerRadius = 15
        SaturdayU.layer.borderWidth = 2
        SaturdayU.layer.borderColor = UIColor.red.cgColor
        SaturdayU.backgroundColor = UIColor.white

        SundayU.layer.cornerRadius = 15
        SundayU.layer.borderWidth = 2
        SundayU.layer.borderColor = UIColor.red.cgColor
        SundayU.backgroundColor = UIColor.white

        EveryDayU.layer.cornerRadius = 15
        EveryDayU.layer.borderWidth = 2
        EveryDayU.layer.borderColor = UIColor.red.cgColor
        EveryDayU.backgroundColor = UIColor.white

        UpdateU.layer.cornerRadius = 15
        UpdateU.layer.borderWidth = 2
        UpdateU.layer.borderColor = UIColor.red.cgColor
        UpdateU.backgroundColor = UIColor.white
        
        DeleteU.layer.cornerRadius = 15
        DeleteU.layer.borderWidth = 2
        DeleteU.layer.borderColor = UIColor.red.cgColor
        DeleteU.backgroundColor = UIColor.white
        
        DateOrTimePickerView.isHidden = true
        
    }

    @IBOutlet weak var DateOrTimePickerView: UIDatePicker!
    @IBAction func DateOrTimeAction(_ sender: UIDatePicker)
    {
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = DateFormatter.Style.short
        let currentTime = timeFormatter.string(from: DateOrTimePickerView.date)
        ScheduleTimeU.text = currentTime
        DateOrTimePickerView.isHidden = true
    }
    
    @IBAction func ScheduleTimeAction(_ sender: UIButton)
    {
        if DateOrTimePickerView.isHidden == true
        {
            DateOrTimePickerView.isHidden = false
        }
        else
        {
            DateOrTimePickerView.isHidden = true
        }
    }
    
    
    @IBOutlet weak var EveryDayU: UIButton!
    @IBOutlet weak var MondayU: UIButton!
    @IBOutlet weak var TuesdayU: UIButton!
    @IBOutlet weak var WednesdayU: UIButton!
    @IBOutlet weak var ThursdayU: UIButton!
    @IBOutlet weak var FridayU: UIButton!
    @IBOutlet weak var SaturdayU: UIButton!
    @IBOutlet weak var SundayU: UIButton!
    
    
    
    @IBAction func MondayAction(_ sender: UIButton)
    {
        let mon = "Monday"
        if MondayU.backgroundColor == UIColor.white
        {
            MondayU.backgroundColor = UIColor.green
            WeakDataAddArray.append(mon)
            mnday = 22
        }
        else if MondayU.backgroundColor == UIColor.green
        {
            
            MondayU.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: mon)
            WeakDataAddArray.remove(at: i!)
        }
    }
    @IBAction func TuesdayAction(_ sender: UIButton)
    {
        let tue = "Tuesday"
        if TuesdayU.backgroundColor == UIColor.white
        {
            TuesdayU.backgroundColor = UIColor.green
            WeakDataAddArray.append(tue)
            mnday = 22
        }
        else if TuesdayU.backgroundColor == UIColor.green
        {
            
            TuesdayU.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: tue)
            WeakDataAddArray.remove(at: i!)
        }
    }
    @IBAction func WednesdayAction(_ sender: UIButton)
    {
        let wed = "Wednesday"
        if WednesdayU.backgroundColor == UIColor.white
        {
            WednesdayU.backgroundColor = UIColor.green
            WeakDataAddArray.append(wed)
            mnday = 22
        }
        else if WednesdayU.backgroundColor == UIColor.green
        {
            
            WednesdayU.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: wed)
            WeakDataAddArray.remove(at: i!)
        }
    }
    
    @IBAction func ThursdayAction(_ sender: UIButton)
    {
        let thu = "Thursday"
        if ThursdayU.backgroundColor == UIColor.white
        {
            ThursdayU.backgroundColor = UIColor.green
            WeakDataAddArray.append(thu)
            mnday = 22
        }
        else if ThursdayU.backgroundColor == UIColor.green
        {
            
            ThursdayU.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: thu)
            WeakDataAddArray.remove(at: i!)
        }
    }

    @IBAction func FridayAction(_ sender: UIButton)
    {
        let fri = "Friday"
        if FridayU.backgroundColor == UIColor.white
        {
            FridayU.backgroundColor = UIColor.green
            WeakDataAddArray.append(fri)
            mnday = 22
        }
        else if FridayU.backgroundColor == UIColor.green
        {
            
            FridayU.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: fri)
            WeakDataAddArray.remove(at: i!)
        }
    }
    
    @IBAction func SaturdayAction(_ sender: UIButton)
    {
        let sat = "Saturday"
        if SaturdayU.backgroundColor == UIColor.white
        {
            SaturdayU.backgroundColor = UIColor.green
            WeakDataAddArray.append(sat)
            mnday = 22
        }
        else if SaturdayU.backgroundColor == UIColor.green
        {
            
            SaturdayU.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: sat)
            WeakDataAddArray.remove(at: i!)
        }
    }
    
    @IBAction func SundayAction(_ sender: UIButton)
    {
        let sun = "Sunday"
        if SundayU.backgroundColor == UIColor.white
        {
            SundayU.backgroundColor = UIColor.green
            WeakDataAddArray.append(sun)
            mnday = 22
        }
        else if SundayU.backgroundColor == UIColor.green
        {
            
            SundayU.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: sun)
            WeakDataAddArray.remove(at: i!)
        }
    }
    
    @IBAction func EverydayAction(_ sender: UIButton)
    {
        let weak = "Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday"
        if EveryDayU.backgroundColor == UIColor.white
        {
            MondayU.backgroundColor = UIColor.green
            TuesdayU.backgroundColor = UIColor.green
            WednesdayU.backgroundColor = UIColor.green
            ThursdayU.backgroundColor = UIColor.green
            FridayU.backgroundColor = UIColor.green
            SaturdayU.backgroundColor = UIColor.green
            SundayU.backgroundColor = UIColor.green
            EveryDayU.backgroundColor = UIColor.green
            WeakDataArray.append(weak)
            // print(WeakDataArray)
            evday = 11
        }
        else if EveryDayU.backgroundColor == UIColor.green
        {
            
            MondayU.backgroundColor = UIColor.white
            TuesdayU.backgroundColor = UIColor.white
            WednesdayU.backgroundColor = UIColor.white
            ThursdayU.backgroundColor = UIColor.white
            FridayU.backgroundColor = UIColor.white
            SaturdayU.backgroundColor = UIColor.white
            SundayU.backgroundColor = UIColor.white
            EveryDayU.backgroundColor = UIColor.white
            let i = WeakDataArray.index(of: weak)
            WeakDataArray.remove(at: i!)
            // print(WeakDataArray)
            // print("Remove Array Data")
        }
    }
    
    @IBOutlet weak var UpdateU: UIButton!
    @IBAction func UpdateDataAction(_ sender: UIButton)
    {
       
        if mnday == 22
        {
            
           
            //print(WeakDataArray)
            let joined = WeakDataAddArray.joined(separator: ",")
            print(joined)
            let update = "update Schedule set Time = '\(ScheduleTimeU.text!)' ,Day = '\(joined)'where Schedule_Name = '\(ScheduleNameU.text!)'"
            let isSuccess = DBWrapper.sharedObj.executeQuery(query: update)
            if isSuccess
            {
                print("update:Successfully....")
                navigationController?.popViewController(animated: true)

                
            }
            else
            {
                print("Failed")
            }
        }
        else  if evday == 11
        {
            let joined1 = WeakDataArray.joined(separator: ",")
            print(joined1)
            // (Schedule_Name,Time,Day)
            let update = "update Schedule set Time = '\(ScheduleTimeU.text!)' ,Day = '\(joined1)'where Schedule_Name = '\(ScheduleNameU.text!)'"
            let isSuccess = DBWrapper.sharedObj.executeQuery(query: update)
            if isSuccess
            {
                print("update:Successfully....")
                navigationController?.popViewController(animated: true)

            }
            else
            {
                print("Failed")
            }
            
            
            //WeakDataArray.removeAll()
            
        }

    }

    
    
    @IBOutlet weak var DeleteU: UIButton!
    
    @IBAction func DeleteDataAction(_ sender: UIButton)
    {
        let delete = "delete from Schedule where Schedule_Name = '\(ScheduleNameU.text!)'"
        let isSuccess = DBWrapper.sharedObj.executeQuery(query: delete)
        if isSuccess
        {
            print("delete:Successfully....")
            navigationController?.popViewController(animated: true)
            
            
        }
        else
        {
            print("Failed")
        }
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
