//
//  FlageView.m
//  Flage
//
//  Created by lihonggui on 2016/11/18.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import "FlageView.h"
#import "FlageModel.h"
@interface FlageView()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end
@implementation FlageView

#warning 展示一个对外的接口
+(instancetype)flageView
{
    return [[[NSBundle mainBundle]loadNibNamed:@"FlageView" owner:nil options:nil]lastObject];
}
#warning 对外高度
+(CGFloat)rowHeight
{
    return 100;
}
-(void)setFlageModel:(FlageModel *)flageModel
{
    _flageModel = flageModel;
    
    _imageView.image = [UIImage imageNamed:flageModel.icon];
    _label.text = flageModel.name;
}

@end
