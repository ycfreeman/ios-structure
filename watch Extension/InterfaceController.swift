//
//  InterfaceController.swift
//  watch Extension
//
//  Created by Freeman on 23/1/17.
//  Copyright © 2017 Ladbrokes. All rights reserved.
//

import WatchKit
import Foundation
import RxSwift
import RxCocoa
import someframework

class InterfaceController: WKInterfaceController {
    
    @IBOutlet var label: WKInterfaceLabel!

    private let dBag = DisposeBag()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        SomeObservable.obs
            .asDriver(onErrorJustReturn: "")
            .drive(onNext: {
                [unowned self]
                (string) in
                self.label.setText(string)
            })
            .addDisposableTo(dBag)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
