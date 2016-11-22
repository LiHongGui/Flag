//
//  FlageModel.h
//  Flage
//
//  Created by lihonggui on 2016/11/19.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlageModel : NSObject

@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *icon;

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)flageModelWithDict:(NSDictionary *)dict;
@end
