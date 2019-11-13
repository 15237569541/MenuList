//
//  ViewController.m
//  Alerts
//
//  Created by 王明 on 2019/10/29.
//  Copyright © 2019 王明. All rights reserved.
//

#import "ViewController.h"
#import "TypeMenu.h"

@interface ViewController ()

@property (nonatomic,strong)TypeMenu *typeMenu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"3333333");
}

- (TypeMenu *)typeMenu{
    if (!_typeMenu) {
        NSArray *dataArray = [[NSArray alloc]initWithObjects:
           [NSDictionary dictionaryWithObjectsAndKeys:@"我的收藏",@"title",@"motify",@"img", nil],
           [NSDictionary dictionaryWithObjectsAndKeys:@"清理缓存",@"title",@"motify",@"img", nil],
           [NSDictionary dictionaryWithObjectsAndKeys:@"评价应用",@"title",@"motify",@"img", nil],
           [NSDictionary dictionaryWithObjectsAndKeys:@"关于我们",@"title",@"motify",@"img", nil],nil];
        _typeMenu = [TypeMenu createMenuWithFrame:CGRectMake(20, 100, 120, 170) dataArray:dataArray];
        _typeMenu.selectRowBlcok = ^(NSString * _Nonnull title) {
            NSLog(@"%@",title);
        };
    }
    return _typeMenu;
}
- (IBAction)buttonClick:(UIButton *)sender {
    [self.typeMenu showMenu];
    NSLog(@"1111111");
    
}

-(void)aaaa{
    
}



@end
