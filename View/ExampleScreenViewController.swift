
//
//  Created by Alex on 11/15/17.
//

import UIKit



class ExampleScreenViewController: UIViewController {
  fileprivate var customDatasource: ExampleTableViewDatasource?
  fileprivate var customDelegate: ExampleTableViewDelegate?

  @IBOutlet var tableView: UITableView!
  var detailPresenter: ExamplePresenter?
  

  
  override func viewDidLoad() {
        super.viewDidLoad()
    detailPresenter = ExamplePresenter(view: self, model:ExampleModel())
    
    self.customDelegate = ExampleTableViewDelegate(self)
    self.customDatasource = ExampleTableViewDatasource(tableView: self.tableView, delegate: self.customDelegate!, delegateVC: self)
  }
  
}


//MARK: extension for presenter work
extension ExampleScreenViewController: ExampleProtocol {
  
}
//MARK: extension for tableView
extension ExampleScreenViewController: ExampleTableItemDelegate{
  
}
