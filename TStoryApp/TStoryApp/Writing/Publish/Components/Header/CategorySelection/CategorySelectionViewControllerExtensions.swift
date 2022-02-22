//
//  CategorySelectionViewExtensions.swift
//  TStoryApp
//
//  Created by yumin chu on 2021/11/07.
//

import UIKit

extension CategorySelectionViewController: CategorySelectionViewDelegate {
    func categorySelectionDidTapped(name categoryName: String) {
        delegate?.categorySelectionDidTapped(self, name: categoryName)
        setCategoryName(name: categoryName)
    }
}
