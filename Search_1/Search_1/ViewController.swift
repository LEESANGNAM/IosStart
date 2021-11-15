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
        
        let searchC = UISearchController(searchResultsController: nil)
        searchC.searchResultsUpdater = self
        self.navigationItem.searchController = searchC
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
    
        
        switch isFiltered{
        case true:
            cell.wordLabel.text = filteredWordList[indexPath.row]
        case false:
            cell.wordLabel.text = wordList[indexPath.row]
        }
        
        return cell
    }
}

extension ViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        if let hasText = searchController.searchBar.text?.lowercased(){
            if hasText.isEmpty{
                isFiltered = false
            }else{
                isFiltered = true
//                filteredWordList = wordList.filter({ element in // true 면 들어가고 false 면 제외
//                    return element.contains(hasText) // 해당 텍스트가 들어있냐. return bool타입
//                })
                filteredWordList = wordList.filter({$0.contains(hasText)})
            }
            
            searchResultTableView.reloadData() // 테이블뷰 갱신
        }
    }
    
    
}
