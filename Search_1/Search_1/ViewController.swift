//
//  ViewController.swift
//  Search_1
//
//  Created by 이상남 on 2021/11/15.
//

import UIKit

class ViewController: UIViewController{
    
   
    var wordList = ["all","blue","sky","hello",
                    "number","marvel","super",
                    "sangnam","red","yellow","black",
                    "mint","orange","best","dog",
                    "cat","queen","white","gery",
                    "친구","사랑","우정","서울","한국",
                    "비율","거리","바나나","라면","인천",
                    "경기도","바다","하늘","휴식","내맘"]
    
    var filteredWordList: [String] = []
    var isFiltered = false
    
    @IBOutlet weak var searchResultTableView: UITableView!
    
    // 셀구성
    // 필터 결과
    // 전체 결과
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchResultTableView.delegate = self
        searchResultTableView.dataSource = self
        
        searchResultTableView.register(UINib(nibName: "WordCell", bundle: nil), forCellReuseIdentifier: "wordCell") //cell 등록
        
        let serachVC = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = serachVC
        self.navigationItem.hidesSearchBarWhenScrolling = false // 서치바 숨기기 ( 기본값. true)
        
    }


}

extension ViewController: UITableViewDelegate{

}

extension ViewController:UITableViewDataSource{
    // row 수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch isFiltered{
        case true:
            return filteredWordList.count
        case false:
            return wordList.count
        }
    }
     // cell 구성 방식
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "wordCell") as! WordCell
        cell.wordLabel.text = wordList[indexPath.row]
        
//        if isFiltered {
//            return filteredWordListCell
//        }else{
//            return wordListCell
//        }
        return cell
    }
}
