
//  Created by Alex Jovmir on 11/15/17.
//

import UIKit

class ExampleTableViewCell: UITableViewCell, NibReusable {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
  static var reuseIdentifier: String { return "ExampleTableViewCell" }
  static var nib: UINib { return UINib(nibName: "ExampleTableViewCell", bundle: nil) } // Use VeryCustomUI.xib
}

struct ExampleTableViewCellModel {
}

extension ExampleTableViewCellModel: CellViewModel {
  func setup(cell: SingleTableViewCell) {
  }
}
