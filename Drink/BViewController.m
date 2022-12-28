//
//  BViewController.m
//  Drink
//
//  Created by 翟旭博 on 2022/11/14.
//

#import "BViewController.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface BViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = _array[_flag];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.frame = CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 200);
    label.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:label];
    
    self.imageView = [[UIImageView alloc] init];
    self.imageView.backgroundColor = [UIColor clearColor];
    self.imageView.frame = CGRectMake(100, 450, SIZE_WIDTH - 200, SIZE_WIDTH - 200);
    self.imageView.layer.masksToBounds = YES;
    self.imageView.layer.cornerRadius = 20;
    [self.imageView setImage:[UIImage imageNamed:@"1.jpg"]];
    if ([self.array[self.flag] isEqualToString:@"yn"] || [self.array[self.flag] isEqualToString:@"严宁"]) {
        [self.imageView setImage:[UIImage imageNamed:@"yn.jpg"]];
    } else if ([self.array[self.flag] isEqualToString:@"fzq"] || [self.array[self.flag] isEqualToString:@"傅梓棋"]) {
        [self.imageView setImage:[UIImage imageNamed:@"fzq.jpg"]];
    } else if ([self.array[self.flag] isEqualToString:@"zxb"] || [self.array[self.flag] isEqualToString:@"翟旭博"]) {
        [self.imageView setImage:[UIImage imageNamed:@"zxb.jpg"]];
    } else if ([self.array[self.flag] isEqualToString:@"zzy"] || [self.array[self.flag] isEqualToString:@"张泽宇"]) {
        [self.imageView setImage:[UIImage imageNamed:@"zzy.jpg"]];
    }
    
    [self.view addSubview:self.imageView];
}

- (void)press {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self press];
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
