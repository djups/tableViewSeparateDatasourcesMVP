
//  Created by Alex Jovmir on 11/15/17.
//

import Foundation

protocol ExampleProtocol {
 
  
}

class ExamplePresenter {
  
  private let view: ExampleProtocol
  private let model: ExampleModelService
  
  init(view: ExampleProtocol, model: ExampleModelService) {
    self.view = view
    self.model = model
  }
}
