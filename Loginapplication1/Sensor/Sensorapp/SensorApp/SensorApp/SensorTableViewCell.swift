
import UIKit

class SensorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sensorDescription: UILabel!
    @IBOutlet weak var sensorName: UILabel!
    @IBOutlet weak var sensorId: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
