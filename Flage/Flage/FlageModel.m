//
//  FlageModel.m
//  Flage
//
//  Created by lihonggui on 2016/11/19.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import "FlageModel.h"

@implementation FlageModel


-(instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)flageModelWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}
@end
