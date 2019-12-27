
import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource
{


    @IBOutlet weak var ScheduleNamelbl: UILabel!
    @IBOutlet weak var Timelbl: UILabel!
    @IBOutlet weak var TurnOfflbl: UILabel!
    @IBOutlet weak var Daylbl: UILabel!
    
    @IBOutlet weak var ScheduleButton: UIButton!
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var ScheduleArray = [String]()
    var ArrayDay = [String]()
    var ArrayTime = [String]()
    override func viewDidLoad()
    {
        super.viewDidLoad()
     
        ScheduleButton.layer.cornerRadius = 15
        ScheduleButton.layer.borderWidth = 2
        ScheduleButton.layer.borderColor = UIColor.red.cgColor
        CollectionView.delegate = self
        CollectionView.dataSource = self
        
        
       let select = "select * from Schedule"
       DBWrapper.sharedObj.selectAllTask(query: select)
        if DBWrapper.sharedObj.schduleArrayData.count > 0 && DBWrapper.sharedObj.DayScheduleArray.count > 0 && DBWrapper.sharedObj.TimeScheduleArray.count > 0
        {
            ScheduleArray = DBWrapper.sharedObj.schduleArrayData
            ArrayDay = DBWrapper.sharedObj.DayScheduleArray
            ArrayTime = DBWrapper.sharedObj.TimeScheduleArray
    
        }
        else
        {
            print("Not Found")
        }
        
        self.CollectionView.reloadData()
        
    }

    
    @IBAction func AddNewSchedule(_ sender: UIButton)
    {
        let screentwo = self.storyboard?.instantiateViewController(withIdentifier: "ScreenTwoViewController") as! ScreenTwoViewController
        navigationController?.pushViewController(screentwo, animated: true)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return ScheduleArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.ScheduleName.text = ScheduleArray[indexPath.row]
        cell.Time.text = ArrayTime[indexPath.row]
        cell.Day.text = ArrayDay[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        
        let update = self.storyboard?.instantiateViewController(withIdentifier: "UpdateViewController") as! UpdateViewController
        navigationController?.pushViewController(update, animated: true)
        
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        update.sname = cell.ScheduleName.text!

    }
   
    override func viewWillAppear(_ animated: Bool)
    {
        let select = "select * from Schedule"
        DBWrapper.sharedObj.selectAllTask(query: select)
        if DBWrapper.sharedObj.schduleArrayData.count > 0 && DBWrapper.sharedObj.DayScheduleArray.count > 0 && DBWrapper.sharedObj.TimeScheduleArray.count > 0
        {
            ScheduleArray = DBWrapper.sharedObj.schduleArrayData
            ArrayDay = DBWrapper.sharedObj.DayScheduleArray
            ArrayTime = DBWrapper.sharedObj.TimeScheduleArray
            
        }
        else
        {
            print("Not Found")
        }

        self.CollectionView.reloadData()
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

