//
//  FlageView.h
//  Flage
//
//  Created by lihonggui on 2016/11/18.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FlageModel,FlageView;
@interface FlageView : UIView

@property(nonatomic,strong) FlageModel *flageModel;

+(instancetype)flageView;
+(CGFloat)rowHeight;
@end
