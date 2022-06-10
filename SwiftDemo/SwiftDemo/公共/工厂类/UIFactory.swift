//
//  File.swift
//  SwiftDemo
//
//  Created by MacBook on 27/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    static func naviStyleLabel(title: String?) -> UILabel {
        let result = UILabel()
        result.font = UIFont.systemFont(ofSize: 12)
        result.textColor = .black
        result.text = title
        return result
    }
    
    //MARK: 根据tpllabel,生成布局视图
    func feed_cover_large_video(metroData: MetroData?) -> UIView {
        let view = UIView()
        guard let metroData = metroData else { return view }
        
        let coverScale = metroData.cover?.imgInfo?.scale ?? 1.0
        
        let bageView = UIImageView(image: UIImage(named: "et_badge_daily_46x46_"))
        let coverView = UIImageView()
        let titleLabel = UILabel(txt: metroData.title)
        let avatarView = UIImageView()
        let authorLabel = UILabel(txt: "\(metroData.author?.nick ?? "") \(metroData.tags?.compactMap{ $0.title }.joined() ?? "")")
        let indicatorImageView = UIImageView(image: UIImage(named: "et_duration_trangle_black_6x7_"))
        let durationLabel = UILabel(txt: metroData.duration?.text)
        let detailStackView = UIStackView.init(arrangedSubviews: [authorLabel,indicatorImageView,durationLabel])
        detailStackView.axis = .horizontal
        
        let stackView = UIStackView.init(arrangedSubviews: [titleLabel,detailStackView])
        stackView.axis = .vertical
        
        avatarView.sd_setImage(with: URL(string: metroData.author?.avatar?.url ?? ""))
        coverView.sd_setImage(with: URL(string: metroData.cover?.url ?? ""))
        
        view.addSubview(coverView)
        view.addSubview(avatarView)
        view.addSubview(stackView)
        view.addSubview(bageView)
        
        coverView.snp.makeConstraints { make in
            make.leading.top.trailing.equalTo(view)
            make.width.equalTo(coverView.snp.height).multipliedBy(coverScale)
        }
        bageView.snp.makeConstraints { make in
            make.top.equalTo(coverView).offset(10)
            make.trailing.equalTo(coverView).offset(10)
        }
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(view).offset(15)
            make.top.equalTo(coverView.snp.bottom).offset(15)
            make.bottom.equalTo(view).offset(-15)
        }
        avatarView.snp.makeConstraints { make in
            make.width.height.equalTo(60)
        }
        
        
        return view
    }

}

extension UILabel {
    convenience init(txt: String?,
                     font:UIFont = UIFont.boldSystemFont(ofSize: 12),
                     txtColor: UIColor = .black) {
        self.init(frame: .zero)
        
        self.text = txt
        self.font = font
        self.textColor = txtColor
    }
}


