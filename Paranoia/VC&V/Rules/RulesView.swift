//
//  RulesView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 13.12.2022.
//

import UIKit

class RulesView: UIView {
    
    var getPagesCount: (() -> (Int))?
    
    var getPageForIndex: ((Int) -> RulesOnboardingModel?)?
        
    private let pageControl: UIPageControl = {
        let pc = UIPageControl()
        return pc
    }()
    
//    private var slides: [RulesOnboardingModel] = []
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        cv.showsVerticalScrollIndicator = false
        cv.showsHorizontalScrollIndicator = false
        cv.isPagingEnabled = true
        cv.backgroundColor = Colors.backgroundColor
        cv.register(RulesCollectionViewCell.self, forCellWithReuseIdentifier: RulesCollectionViewCell.identifier)
        cv.bounces = false
        return cv
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.backgroundColor = Colors.backgroundColor
        
    
        self.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self

    }
    
    func reload() {
        collectionView.reloadData()
    }
    
    func scrollTo(_ page: Int) {
        let indexPath = IndexPath(item: page, section: 0)
        self.collectionView.scrollToItem(at: indexPath, at: [.bottom], animated: false)
    }
}

extension RulesView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        getPagesCount?() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let model = getPageForIndex?(indexPath.row) else { return UICollectionViewCell() }
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RulesCollectionViewCell.identifier, for: indexPath) as? RulesCollectionViewCell else { return UICollectionViewCell() }
        cell.setup(model)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("WWW", self.frame.width)
        print("hhh", self.frame.height)

//        return CGSize(width: self.frame.width, height: self.frame.height * 2/3)
        return CGSize(width: self.frame.width, height: self.frame.height)
    }
}
