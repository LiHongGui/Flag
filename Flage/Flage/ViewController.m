//
//  ViewController.m
//  Flage
//
//  Created by lihonggui on 2016/11/18.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import "ViewController.h"
#import "FlageModel.h"
#import "FlageView.h"
@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property(nonatomic,strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    
}

-(NSArray *)dataArray
{
    if (_dataArray == nil) {
        NSString *filePath = [[NSBundle mainBundle]pathForResource:@"03flags.plist" ofType:nil];
        NSArray *temp = [NSArray arrayWithContentsOfFile:filePath];
        NSMutableArray *mutb = [NSMutableArray arrayWithCapacity:temp.count];
        
        [temp enumerateObjectsUsingBlock:^(NSDictionary*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            FlageModel *flageModel = [FlageModel flageModelWithDict:obj];
            [mutb addObject:flageModel];
        }];
//        for (NSDictionary *dict in temp) {
//            FlageModel *flageModel = [FlageModel flageModelWithDict:dict];
//            [mutb addObject:flageModel];
//        }
        _dataArray = [mutb copy];
//
    }
    return _dataArray;
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return  1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.dataArray.count;
}

-(UIView*)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    FlageModel *flageModel = self.dataArray[row];
    
//    FlageView *flageView = [[[NSBundle mainBundle]loadNibNamed:@"FlageView" owner:nil options:nil]lastObject];
    FlageView *flageView = [FlageView flageView];
    flageView.flageModel = flageModel;
    return flageView;

}
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return [FlageView rowHeight];
}
@end
