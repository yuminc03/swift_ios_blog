//
//  HomeViewController.swift
//  TStoryApp
//
//  Created by LS-NOTE-00106 on 2021/11/11.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeModel = HomeModel()
    
    lazy var homeTableView: HomeTableView = {
        let tableView = HomeTableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        return tableView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configulations()
        setConstraints()
    }

    func configulations() {
        let model = HomeModel(
            topContents: "피드에서 \n새 글을 \n확인해보세요",
            visitModel: [
                VisitModel(
                    blogName: "천천히 해도 괜찮아",
                    blogUrl: "dpffldk.tistory.com",
                    visitCell: [
                        VisitCell(
                            todayVisitNumber: [
                                VisitNumber(
                                    visitNum: 2,
                                    visitIncrement: 0
                                )
                            ],
                            visitInfo: [
                                VisitInformation(
                                    visitUrl: "https://search.daum.net/search?w=tot&DA=UME&t__nil_searchbox=suggest&sug=&sugo=15&sq=%EC%9D%BC%EC%9D%99+&o=1&q=%EC%9D%BC%EC%9D%98+%EA%B8%B0%EC%81%A8%EA%B3%BC+%EC%8A%AC%ED%94%94",
                                    visitDate: "11. 15. 10:05"
                                ),
                                VisitInformation(
                                    visitUrl: "https://search.daum.net/search?w=tot&DA=UME&t__nil_searchbox=suggest&sug=&sugo=15&sq=%EC%9D%BC%EC%9D%99+&o=1&q=%EC%9D%BC%EC%9D%98+%EA%B8%B0%EC%81%A8%EA%B3%BC+%EC%8A%AC%ED%94%94",
                                    visitDate: "11. 15. 09:55"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:58"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:58"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:58"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:58"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:58"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:58"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:57"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:56"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/",
                                    visitDate: "11. 14. 22:56"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/7",
                                    visitDate: "11. 14. 22:56"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/7",
                                    visitDate: "11. 14. 22:55"
                                ),
                                VisitInformation(
                                    visitUrl: "https://search.daum.net/search?w=tot&DA=UME&t__nil_searchbox=suggest&sug=&sugo=1&sq=%EC%9D%B4%EB%B2%88+%EC%83%9D%EC%9D%80+%ED%8B%80%EB%A0%B8%EB%8B%A4%EA%B3%A0+&o=1&q=%EC%9D%B4%EB%B2%88+%EC%83%9D%EC%9D%80+%ED%8B%80%EB%A0%B8%EB%8B%A4%EA%B3%A0+%EB%8A%90%EA%BB%B4%EC%A7%88+%EB%95%8C",
                                    visitDate: "11. 14. 22:55"
                                ),
                                VisitInformation(
                                    visitUrl: "https://search.daum.net/search?nil_suggest=btn&w=tot&DA=SBC&q=photoshop+%EA%B7%B8%EB%A6%BC",
                                    visitDate: "11. 14. 22:55"
                                ),
                                VisitInformation(
                                    visitUrl: "https://search.daum.net/search?nil_suggest=btn&w=tot&DA=SBC&q=photoshop+%EA%B7%B8%EB%A6%BC",
                                    visitDate: "11. 14. 22:54"
                                ),
                                VisitInformation(
                                    visitUrl: "https://dpffldk.tistory.com/5",
                                    visitDate: "11. 14. 22:42"
                                ),
                                VisitInformation(
                                    visitUrl: "https://search.daum.net/search?nil_suggest=btn&w=tot&DA=SBC&q=%EC%9D%BC%EC%9D%98+%EA%B8%B0%EC%81%A8%EA%B3%BC+%EC%8A%AC%ED%94%94",
                                    visitDate: "11. 14. 22:41"
                                ),
                            ],
                            visitKeyWords: [
                                VisitKeyWords(
                                    visitKeyWord: "할로윈 그림",
                                    keyWordCount: 11
                                ),
                                VisitKeyWords(
                                    visitKeyWord: "일의 기쁨과 슬픔",
                                    keyWordCount: 3
                                ),
                                VisitKeyWords(
                                    visitKeyWord: "우주관련글",
                                    keyWordCount: 1
                                ),
                                VisitKeyWords(
                                    visitKeyWord: "일의 기쁨과 슬픔 책",
                                    keyWordCount: 1
                                )
                            ]
                        )
                    ]
                )
            ],
            recentlyModel: [
                RecentlyModel(
                    postName: "Naver",
                    postUrl: "https://www.naver.com/",
                    likeNum: 0,
                    commentNum: 0
                ),
                RecentlyModel(
                    postName: "Daum",
                    postUrl: "https://www.daum.net/",
                    likeNum: 1,
                    commentNum: 0
                ),
                RecentlyModel(
                    postName: "Google",
                    postUrl: "https://www.google.com/",
                    likeNum: 0,
                    commentNum: 0
                ),
                RecentlyModel(
                    postName: "Youtube",
                    postUrl: "https://www.youtube.com/",
                    likeNum: 1,
                    commentNum: 2
                ),
                RecentlyModel(
                    postName: "Github",
                    postUrl: "https://github.com/",
                    likeNum: 1,
                    commentNum: 0
                ),
                RecentlyModel(
                    postName: "Kakao freinds shop",
                    postUrl: "https://store.kakaofriends.com/index/today",
                    likeNum: 1,
                    commentNum: 0
                ),
                RecentlyModel(
                    postName: "Facebook",
                    postUrl: "https://www.facebook.com/",
                    likeNum: 1,
                    commentNum: 2
                ),
                RecentlyModel(
                    postName: "Mirim Grils Information Science High School",
                    postUrl: "https://www.e-mirim.hs.kr/main.do",
                    likeNum: 1,
                    commentNum: 1
                ),
            ],
            popularityModel: [
                PopularityModel(
                    postName: "Photoshop으로 할로윈 토끼 그림 그리기",
                    postImageName: "postImage1.png",
                    postViewsNum: 11
                ),
                PopularityModel(
                    postName: "일의 기쁨과 슬픔을 읽어보았습니다",
                    postImageName: "postImage2.png",
                    postViewsNum: 3
                ),
                PopularityModel(
                    postName: "Photoshop으로 우주의 소녀 그림그리기",
                    postImageName: "postImage3.png",
                    postViewsNum: 2
                ),
                PopularityModel(
                    postName: "보석느낌 펜던트만들기",
                    postImageName: "postImage4.png",
                    postViewsNum: 1
                ),
                PopularityModel(
                    postName: "코로나 백신 1차, 2차 접종완료했습니다",
                    postImageName: "postImage5.png",
                    postViewsNum: 1
                )
            ],
            subscriberModel: [
                SubscriberModel(
                    subscriberName: "동사힐",
                    blogName: "모든 것은 서로 연결되어 있다.",
                    backgroundImageName: "backgroundImage1.png",
                    profileImageName: "profileImage1.png"
                ),
                SubscriberModel()
            ]
        )
        
        homeModel = model
    }
    
    private func setConstraints() {
        view.backgroundColor = .white
        NSLayoutConstraint.activate([
            homeTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            homeTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
