//
//  CalendarViewController.swift
//  CookieCode
//
//  Created by Katherine Sanders on 7/22/21.
//

import Foundation
import UIKit
import CoreData

class CalendarViewController: UIViewController, ViewControllerDelegate {

    var ratingsAndResponses : [ResponseCD] = []
    
    var tableViewDatasource: TableViewDataSource?
    var tableViewDelegate: TableViewDelegate?
    

    @IBOutlet weak var table: UITableView!
    
        override func viewDidLoad() {
           super.viewDidLoad()
            getResponses()
            self.tableViewDelegate = TableViewDelegate(withDelegate: self)
                    self.tableViewDatasource = TableViewDataSource(withData: ratingsAndResponses)
                    
                    self.table.delegate = self.tableViewDelegate
                    self.table.dataSource = self.tableViewDatasource

       }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getResponses()
        print(ratingsAndResponses)
        self.tableViewDelegate = TableViewDelegate(withDelegate: self)
                self.tableViewDatasource = TableViewDataSource(withData: ratingsAndResponses)
                
                self.table.delegate = self.tableViewDelegate
                self.table.dataSource = self.tableViewDatasource
    }
    
    func selectedCell(row: Int) {
            print("Row: \(row)")
        }
    
    func getResponses() {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        if let coreDataResponses = try? context.fetch(ResponseCD.fetchRequest()) as? [ResponseCD] {
                ratingsAndResponses = coreDataResponses
            self.table.reloadData()
        }
      }
    }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              // Get the new view controller using segue.destination.
              // Pass the selected object to the new view controller.
              if let addVC = segue.destination as? RateOkViewController {
                  addVC.nextVC = self;
              }
           
    
       }

    



}
