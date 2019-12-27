
import UIKit

class ScreenTwoViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UIPickerViewDelegate,UIPickerViewDataSource
{
    
    @IBOutlet weak var ScheduleTextField: UITextField!
    
    @IBOutlet weak var RoomTableView: UITableView!
   // @IBOutlet weak var RoomDataOutletBtn: UIButton!
    
    
   // @IBOutlet weak var selectapplianceoutletbtn: UIButton!
    @IBOutlet weak var PickerViewAppliance: UIPickerView!
    
    var RoomArrayData = [String]()
    var ApplianceDataArray = [String]()
    
    var WeakDataArray = [String]()
    var WeakDataAddArray = [String]()
    
    
    var evday:Int!
    var mnday:Int!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        evday = 0
        mnday = 0
        
        RoomArrayData = ["Bedroom","Living room","Dining room","Kitchen"]
        RoomTableView.delegate = self
        RoomTableView.dataSource = self
        RoomTableView.isHidden = true
        
        
        ApplianceDataArray = ["Light1","Light2","Light3","Fan"]
        PickerViewAppliance.isHidden = true
        PickerViewAppliance.dataSource = self
        PickerViewAppliance.delegate = self

        // ALL BUTTONS 
        Monday.layer.borderWidth = 1
        Monday.layer.cornerRadius = 15
        Monday.layer.borderColor = UIColor.red.cgColor
        Monday.backgroundColor = UIColor.white
        
        Tuesday.layer.borderWidth = 1
        Tuesday.layer.cornerRadius = 15
        Tuesday.layer.borderColor = UIColor.red.cgColor
        Tuesday.backgroundColor = UIColor.white

        
        Wednesday.layer.borderWidth = 1
        Wednesday.layer.cornerRadius = 15
        Wednesday.layer.borderColor = UIColor.red.cgColor
        Wednesday.backgroundColor = UIColor.white

        
        Thursdar.layer.borderWidth = 1
        Thursdar.layer.cornerRadius = 15
        Thursdar.layer.borderColor = UIColor.red.cgColor
        Thursdar.backgroundColor = UIColor.white

        
        Friday.layer.borderWidth = 1
        Friday.layer.cornerRadius = 15
        Friday.layer.borderColor = UIColor.red.cgColor
        Friday.backgroundColor = UIColor.white

        
        Saturday.layer.borderWidth = 1
        Saturday.layer.cornerRadius = 15
        Saturday.layer.borderColor = UIColor.red.cgColor
        Saturday.backgroundColor = UIColor.white

        
        Sunday.layer.borderWidth = 1
        Sunday.layer.cornerRadius = 15
        Sunday.layer.borderColor = UIColor.red.cgColor
        Sunday.backgroundColor = UIColor.white

        
        Everday.layer.borderWidth = 1
        Everday.layer.cornerRadius = 15
        Everday.layer.borderColor = UIColor.red.cgColor
        Everday.backgroundColor = UIColor.white

        
        
        SubmitOutlet.layer.borderWidth = 1
        SubmitOutlet.layer.cornerRadius = 15
        SubmitOutlet.layer.borderColor = UIColor.red.cgColor
        
        SelectApplianceDatatxt.layer.borderWidth = 1
        SelectApplianceDatatxt.layer.cornerRadius = 15
        SelectApplianceDatatxt.layer.borderColor = UIColor.red.cgColor
        
        SelectRoomDatatxt.layer.borderWidth = 1
        SelectRoomDatatxt.layer.cornerRadius = 15
        SelectRoomDatatxt.layer.borderColor = UIColor.red.cgColor
        
        
        
        //FOR WEAK START
       // WeakDataArray = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
        //FOR WEAK END
        
    }
    
    //FOT SUBMIT START
    
    @IBOutlet weak var SubmitOutlet: UIButton!
    
    @IBAction func SubmitClickData(_ sender: UIButton)
    {
       
        
        if mnday == 22
        {
            let joined = WeakDataAddArray.joined(separator: ",")
           // print(joined)
            
            let insert = "insert into Schedule(Schedule_Name,Room_Name,Appliance_Name,Time,Day)values('\(ScheduleTextField.text!)','\(SelectRoomDatatxt.text!)','\(SelectApplianceDatatxt.text!)','\(TimeSelectlbl.text!)','\(joined)')"
            let isSuccess = DBWrapper.sharedObj.executeQuery(query: insert)
            if isSuccess
            {
                print("Insert:Successfully....")
                ClearData()
            }
            else
            {
                print("Failed")
            }
            
            
            WeakDataArray.removeAll()
 
        }
        else if evday == 11
        {
            //print(WeakDataArray)
            
            let joined1 = WeakDataArray.joined(separator: ",")
            print(joined1)
            
            let insert = "insert into Schedule(Schedule_Name,Room_Name,Appliance_Name,Time,Day)values('\(ScheduleTextField.text!)','\(SelectRoomDatatxt.text!)','\(SelectApplianceDatatxt.text!)','\(TimeSelectlbl.text!)','\(joined1)')"
            let isSuccess = DBWrapper.sharedObj.executeQuery(query: insert)
            if isSuccess
            {
                print("Insert:Successfully....")
                ClearData()
            }
            else
            {
                print("Failed")
            }

            
            
            WeakDataAddArray.removeAll()
        }
    }
    //FOR SUBMIT CLEAR END
    func ClearData()
    {
        ScheduleTextField.text = ""
        SelectRoomDatatxt.text = ""
        SelectApplianceDatatxt.text = ""
        TimeSelectlbl.text = ""
        TimeSelectlbl.isHidden = true
        if mnday == 22
        {
            Monday.backgroundColor = UIColor.white
            Tuesday.backgroundColor = UIColor.white
            Wednesday.backgroundColor = UIColor.white
            Thursdar.backgroundColor = UIColor.white
            Friday.backgroundColor = UIColor.white
            Saturday.backgroundColor = UIColor.white
            Sunday.backgroundColor = UIColor.white
        }
        else if evday == 11
        {
            Everday.backgroundColor = UIColor.white
            Monday.backgroundColor = UIColor.white
            Tuesday.backgroundColor = UIColor.white
            Wednesday.backgroundColor = UIColor.white
            Thursdar.backgroundColor = UIColor.white
            Friday.backgroundColor = UIColor.white
            Saturday.backgroundColor = UIColor.white
            Sunday.backgroundColor = UIColor.white
        }
    }
    // BUTTON START
    
    @IBOutlet weak var Everday: UIButton!
    @IBOutlet weak var Monday: UIButton!
    @IBOutlet weak var Tuesday: UIButton!
    @IBOutlet weak var Wednesday: UIButton!
    @IBOutlet weak var Thursdar: UIButton!
    @IBOutlet weak var Friday: UIButton!
    @IBOutlet weak var Saturday: UIButton!
    @IBOutlet weak var Sunday: UIButton!
    
    @IBAction func EverdayClick(_ sender: UIButton)
    {
       
        let weak = "Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday"
        if Everday.backgroundColor == UIColor.white
        {
            Everday.backgroundColor = UIColor.green
            Monday.backgroundColor = UIColor.green
            Tuesday.backgroundColor = UIColor.green
            Wednesday.backgroundColor = UIColor.green
            Thursdar.backgroundColor = UIColor.green
            Friday.backgroundColor = UIColor.green
            Saturday.backgroundColor = UIColor.green
            Sunday.backgroundColor = UIColor.green
            WeakDataArray.append(weak)
           // print(WeakDataArray)
            evday = 11
        }
        else if Everday.backgroundColor == UIColor.green
        {
            
            Everday.backgroundColor = UIColor.white
            Monday.backgroundColor = UIColor.white
            Tuesday.backgroundColor = UIColor.white
            Wednesday.backgroundColor = UIColor.white
            Thursdar.backgroundColor = UIColor.white
            Friday.backgroundColor = UIColor.white
            Saturday.backgroundColor = UIColor.white
            Sunday.backgroundColor = UIColor.white
            let i = WeakDataArray.index(of: weak)
            WeakDataArray.remove(at: i!)
           // print(WeakDataArray)
           // print("Remove Array Data")
        }

        
    }
    
    @IBAction func MondayClick(_ sender: UIButton)
    {
        let mon = "Monday"
        if Monday.backgroundColor == UIColor.white
        {
             Monday.backgroundColor = UIColor.green
            WeakDataAddArray.append(mon)
           // print(WeakDataAddArray)
            mnday = 22
        }
        else if Monday.backgroundColor == UIColor.green
        {
            
            Monday.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: mon)
            WeakDataAddArray.remove(at: i!)
           // print(WeakDataAddArray)
        }
       
       // Light Gray Color
    }
    
    @IBAction func TuesdayClick(_ sender: UIButton)
    {
        
        let tue = "Tuesday"
        if Tuesday.backgroundColor == UIColor.white
        {
            Tuesday.backgroundColor = UIColor.green
            WeakDataAddArray.append(tue)
            //print(WeakDataAddArray)
             mnday = 22
        }
        else if Tuesday.backgroundColor == UIColor.green
        {
            Tuesday.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: tue)
            WeakDataAddArray.remove(at: i!)
           // print(WeakDataAddArray)
        }

       
    }
    
    @IBAction func WednesdayClick(_ sender: UIButton)
    {
        
        let wed = "Wednesday"
        if Wednesday.backgroundColor == UIColor.white
        {
            Wednesday.backgroundColor = UIColor.green
            WeakDataAddArray.append(wed)
             mnday = 22
        }
        else if Wednesday.backgroundColor == UIColor.green
        {
            
            Wednesday.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: wed)
            WeakDataAddArray.remove(at: i!)
           // print(WeakDataAddArray)
        }

        
    }
    
    @IBAction func ThursdayClick(_ sender: UIButton)
    {
       
        let thu = "Thursday"
        if Thursdar.backgroundColor == UIColor.white
        {
            Thursdar.backgroundColor = UIColor.green
            WeakDataAddArray.append(thu)
             mnday = 22
        }
        else if Thursdar.backgroundColor == UIColor.green
        {
            
            Thursdar.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: thu)
            WeakDataAddArray.remove(at: i!)
            //print(WeakDataAddArray)
        }

        
    }
    
    @IBAction func FridayClick(_ sender: UIButton)
    {
        let fri = "Friday"
        if Friday.backgroundColor == UIColor.white
        {
            Friday.backgroundColor = UIColor.green
            WeakDataAddArray.append(fri)
             mnday = 22
        }
        else if Friday.backgroundColor == UIColor.green
        {
            
            Friday.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: fri)
            WeakDataAddArray.remove(at: i!)
           // print(WeakDataAddArray)
        }
    }
    
    @IBAction func SaturdayClick(_ sender: UIButton)
    {
        let sat = "Saturday"
        if Saturday.backgroundColor == UIColor.white
        {
            Saturday.backgroundColor = UIColor.green
            WeakDataAddArray.append(sat)
             mnday = 22
        }
        else if Saturday.backgroundColor == UIColor.green
        {
            
            Saturday.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: sat)
            WeakDataAddArray.remove(at: i!)
            //print(WeakDataAddArray)
        }
    }
    
    @IBAction func SundayClick(_ sender: UIButton)
    {
        let sun = "Sunday"
        if Sunday.backgroundColor == UIColor.white
        {
            Sunday.backgroundColor = UIColor.green
            WeakDataAddArray.append(sun)
             mnday = 22
        }
        else if Sunday.backgroundColor == UIColor.green
        {
            
            Sunday.backgroundColor = UIColor.white
            let i = WeakDataAddArray.index(of: sun)
            WeakDataAddArray.remove(at: i!)
            //print(WeakDataAddArray)
        }
    }
    
    //BUTTON END
    
    //FOR TIME START
    
    @IBOutlet weak var TimeSelectlbl: UILabel!
    
    @IBOutlet weak var TimeVieweroutlet: UIDatePicker!
    
    @IBAction func TimeViewPickerData(_ sender: UIDatePicker)
    {
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = DateFormatter.Style.short
        let currentTime = timeFormatter.string(from: TimeVieweroutlet.date)
        TimeSelectlbl.text = currentTime
        TimeVieweroutlet.isHidden = true
    }

    //FOR TIME END
    
    
    
  //FOR PICKER VIEW START
    
    
    @IBOutlet weak var SelectApplianceDatatxt: UITextField!
    @IBAction func SelectDataAppliance(_ sender: UIButton)
    {
        if PickerViewAppliance.isHidden == true
        {
            PickerViewAppliance.isHidden = false
        }
        else
        {
            PickerViewAppliance.isHidden = true
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return ApplianceDataArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        let title = ApplianceDataArray[row]
        return title
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        SelectApplianceDatatxt.text = ApplianceDataArray[row]
        PickerViewAppliance.isHidden = true
    }
    
    //FOR PICKER VIEW END
    
    //FOR TABLE VIEW START
    
    
    
    @IBOutlet weak var SelectRoomDatatxt: UITextField!
    @IBAction func SelectRoomData(_ sender: UIButton)
    {
        if RoomTableView.isHidden == true
        {
            RoomTableView.isHidden = false
        }
        else
        {
            RoomTableView.isHidden = true
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return RoomArrayData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = RoomArrayData[indexPath.row]
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
       let cell = tableView.cellForRow(at: indexPath)
        SelectRoomDatatxt.text = cell!.textLabel!.text!
        RoomTableView.isHidden = true
        
    }
    //FOR TABLE VIEW END
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    


}
