import UIKit

class HomeTableViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
    //请求参数
    var url:String? {
        willSet{
            
            guard newValue != nil, url != newValue, let param = newValue?.components(separatedBy: "?").last else {
                return
            }
            let dataDic = [
                "recommend":HOME_PAGE_RECOMMEND,
                "follow":HOME_PAGE_RECOMMEND,
                "daily_issue":HOME_PAGE_RECOMMEND,
            ]
            
            //解析参数
            let paramDic = param.components(separatedBy: "&").reduce(NSMutableDictionary()) { partialResult, item in
                guard item.contains("=") else { return partialResult }
                let dix = item.components(separatedBy: "=")
                partialResult.addEntries(from: [dix.first!:dix.last!])
                return partialResult
            }
            
            let key = paramDic["page_label"] as! String
            let netData = dataDic[key]!
            
            //异步处理
            DispatchQueue.global().async {
                //字符串->json->model
                guard let jsonData = netData.data(using: .utf8),
                      let model = try? JSONDecoder().decode(HomePageConfig.self, from: jsonData)
                else { return }
                
                //主线程刷新数据
                DispatchQueue.main.async {
                    self.refreshPage(with: model.cardList , pageInfo: model.pageInfo )
                }
            }
            
        }
    }
    
    private let itemList = NSMutableArray.init()
    private var totalCount = 0;
    private let cellIdDic : Dictionary<String,AnyClass> = [:]
    
    private let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 300), style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        p_setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if url != nil {
            tableView.reloadData()
        }
    }
    
    func p_setupUI()  {
        self.view.addSubview(tableView)
        for cellReuseIdentifier in cellIdDic.keys {
            tableView.register(cellIdDic[cellReuseIdentifier], forCellReuseIdentifier: cellReuseIdentifier)
        }

        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
    
    private func refreshPage(with data: [CardListConfig]?, pageInfo page:PageInfo?) {
        //pageinfo中，有效的值只有show_the_end
        guard let cardList = data, let pageConfig = page else { return }
        
        
    }
    
    //MARK - delegate,datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return totalCount;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        return cell
    }
    
    //MARK- network

}
