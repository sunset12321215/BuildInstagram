//
//  StartViewController.swift
//  Instagram
//
//  Created by mac on 3/23/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

final class StartViewController: UIViewController {
    
    private let LoginArray = [
        Start(description: "Connect people around the wolrd", image: "login1"),
        Start(description: "Live your life smarter with us", image: "login2"),
        Start(description: "Get a new experience of imagination", image: "login3")
    ]
    
    private struct Constant {
        static let minimumLineSpacing: CGFloat = 0
    }
    
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var pageControl: UIPageControl!
      
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupPageControl()
    }
    
    private func setupCollectionView() {
        collectionView.do {
            $0.register(cellType: LoginCell.self)
        }
    }
    
    private func setupPageControl() {
        pageControl.numberOfPages = LoginArray.count
    }
}

extension StartViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return LoginArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: LoginCell = collectionView.dequeueReusableCell(for: indexPath)
        cell.setContentForCell(LoginArray[indexPath.row])
        return cell
    }
}

extension StartViewController: UICollectionViewDelegate {
    func scrollViewWillEndDragging(_ scrollView: UIScrollView,
                                   withVelocity velocity: CGPoint,
                                   targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let widthScreenSize = view.frame.size.width
        let posion = targetContentOffset.pointee.x / widthScreenSize
        pageControl.currentPage = Int(posion)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Constant.minimumLineSpacing
    }
}

extension StartViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width,
                      height: collectionView.frame.size.height)
    }
}
