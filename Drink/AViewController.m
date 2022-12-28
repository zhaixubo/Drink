//
//  AViewController.m
//  Drink
//
//  Created by 翟旭博 on 2022/11/14.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()

@end

@implementation AViewController
int a = 0,b = 0,c = 0,d = 0;
- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] init];
    label.text = @"点击屏幕抽取幸运者";
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.frame = CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 500);
    label.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:label];
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    self.flag = arc4random() % _array.count;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    BViewController *b = [[BViewController alloc] init];
    b.modalPresentationStyle = UIModalPresentationFullScreen;
    b.flag = self.flag;
    b.array = _array;
    [self presentViewController:b animated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
