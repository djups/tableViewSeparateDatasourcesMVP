//
//  TableViewSource.swift
//
//  Created by Alex Jovmir on 11/15/17.
//

import Foundation
import UIKit

protocol ExampleTableItemDelegate {

}




final class ExampleTableViewDatasource: NSObject, ExampleTableViewDatasourceProtocol {
  
  weak var tableView: UITableView?
  weak var delegate: UITableViewDelegate?
  var delegateVC: ExampleTableItemDelegate
  
  required init(tableView: UITableView, delegate: UITableViewDelegate, delegateVC : ExampleTableItemDelegate) {
    self.tableView = tableView
    self.delegate = delegate
    self.delegateVC = delegateVC
    super.init()
    self.tableView?.separatorColor = UIColor.clear
    
  
    //tableView.register(cellType: TextTableViewCell.self)
    self.tableView?.estimatedRowHeight = 100
    self.tableView?.rowHeight = UITableViewAutomaticDimension;
    tableView.tableFooterView = UIView(frame: .zero)
    self.setupTableView()
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var model: CellViewAnyModel
   
    model = ExampleTableViewCellModel()
    
    return tableView.dequeueReusableCell(with: model, for: indexPath)
    
  }
  
}


class ExampleTableViewDelegate: NSObject, UITableViewDelegate {
  var delegate: ExampleTableItemDelegate
  
  init(_ delegate: ExampleTableItemDelegate) {
    self.delegate = delegate
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
 
        return UITableViewAutomaticDimension
    
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
  }
  
}
