//
//  NewFeautureCell.h
//  NewFeauture
//
//  Created by wanglijie on 15/9/23.
//  Copyright (c) 2015年 zhazha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewFeautureCell : UICollectionViewCell
// 外部留一个接口方便赋值
@property (nonatomic ,strong) UIImage *image;

// 判断当前的位置是什么

- (void)setIndexPath:(NSIndexPath *)indexPath count:(int)count;
@end
