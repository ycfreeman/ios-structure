//
//  ViewController.swift
//  testproject
//
//  Created by Freeman on 23/1/17.
//  Copyright © 2017 Ladbrokes. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import someframework

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    private let dBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SomeObservable.obs
            .asDriver(onErrorJustReturn: "")
            .drive(label.rx.text)
            .addDisposableTo(dBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
