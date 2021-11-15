//
//  VisitLogTableHeaderView.swift
//  TStoryApp
//
//  Created by LS-NOTE-00106 on 2021/11/15.
//

import UIKit

class FullScreenVisitLogTableHeaderView: UITableViewHeaderFooterView {
    
    lazy var backToControllerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("✕", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .light)
        addSubview(button)
        return button
    } ()
    
    lazy var headerTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textColor = .black
        label.text = "유입 로그"
        addSubview(label)
        return label
    } ()
    
    lazy var headerSubTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "최근 3일"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 12, weight: .light)
        addSubview(label)
        return label
    } ()
    
    lazy var logSortButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("최신순 ⌵", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .light)
        addSubview(button)
        return button
    } ()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backToControllerButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backToControllerButton.topAnchor.constraint(equalTo: topAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            headerTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            headerTitle.topAnchor.constraint(equalTo: backToControllerButton.bottomAnchor, constant: 25),
            headerTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            headerSubTitle.leadingAnchor.constraint(equalTo: headerTitle.trailingAnchor, constant: 5),
            headerSubTitle.topAnchor.constraint(equalTo: backToControllerButton.bottomAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            logSortButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            logSortButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}
