//
//  CategoryKindViewExtension.swift
//  TStoryApp
//
//  Created by yumin chu on 2021/10/29.
//

import UIKit

extension CategoryKindViewController: CategoryKindViewDelegate {
    func categoryDidTapped(at index: Int) {
        delegate?.categoryDidTapped(self, at: index)
    }
}
