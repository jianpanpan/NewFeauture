//
//  NewFeautureCell.m
//  NewFeauture
//
//  Created by wanglijie on 15/9/23.
//  Copyright (c) 2015年 zhazha. All rights reserved.
//

#import "NewFeautureCell.h"
@interface NewFeautureCell ()
@property (nonatomic ,weak) UIImageView  *imageV;
@property (nonatomic ,weak) UIButton *shareButton;
@property (nonatomic ,weak) UIButton *startButton;

@end
@implementation NewFeautureCell
- (UIButton *)shareButton
{
    if (_shareButton == nil) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"分享给大家" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"new_feature_share_false"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"new_feature_share_true"] forState:UIControlStateSelected];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn sizeToFit];
        
        [self.contentView addSubview:btn];
        
        _shareButton = btn;
        
    }
    return _shareButton;
}

- (UIButton *)startButton
{
    if (_startButton == nil) {
        UIButton *startBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [startBtn setTitle:@"开始微博" forState:UIControlStateNormal];
        [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button"] forState:UIControlStateNormal];
        [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button_highlighted"] forState:UIControlStateHighlighted];
        [startBtn sizeToFit];
        [startBtn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:startBtn];
        _startButton = startBtn;
        
    }
    return _startButton;
}

- (UIImageView *)imageV{
    if (_imageV==nil) {
       UIImageView *imageV = [[UIImageView alloc]init];
        _imageV = imageV;
        
        [self.contentView addSubview:imageV];
    }
    return _imageV;
}

- (void) setImage:(UIImage *)image{
    _image = image;
    self.imageV.image = image;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.imageV.frame = self.bounds;
    self.startButton.center = CGPointMake(self.frame.size.width*0.5, self.frame.size.height*0.8);
    self.shareButton.center = CGPointMake(self.frame.size.width*0.5, self.frame.size.height*0.9);
    
}

- (void)setIndexPath:(NSIndexPath *)indexPath count:(int)count
{
    if (indexPath.row == count - 1) { // 最后一页,显示分享和开始按钮
        self.shareButton.hidden = NO;
        self.startButton.hidden = NO;
        
        
    }else{ // 非最后一页，隐藏分享和开始按钮
        self.shareButton.hidden = YES;
        self.startButton.hidden = YES;
    }
}
- (void)start{
    NSLog(@"start---123");
}
@end
