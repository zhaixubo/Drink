//
//  FirstViewController.m
//  Drink
//
//  Created by 翟旭博 on 2022/11/15.
//

#import "FirstViewController.h"
#import "AViewController.h"
#define Width [UIScreen mainScreen].bounds.size.width
@interface FirstViewController ()
@property (nonatomic, strong) UITextField *firstTextField;
@property (nonatomic, assign) int arr;
@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) UILabel *label;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _arr = 0;
    self.array = [[NSMutableArray alloc] init];
    self.label = [[UILabel alloc] init];
    self.label.text = @"请输入您要参与抽奖的人数:";
    self.label.textColor = [UIColor blackColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 300);
    self.label.font = [UIFont systemFontOfSize:25];
    [self.view addSubview:self.label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 570, 100, 50);
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 10;
    [button setTitle:@"OK" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:25];
    button.titleLabel.textColor = [UIColor whiteColor];
    button.layer.borderWidth = 2;
    button.tag = 666;
    [button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    _firstTextField = [[UITextField alloc] init];
    _firstTextField.frame = CGRectMake(80, 400, 275, 50);
    _firstTextField.backgroundColor = [UIColor whiteColor];
    _firstTextField.borderStyle = UITextBorderStyleRoundedRect;
    _firstTextField.leftViewMode = UITextFieldViewModeAlways;
    _firstTextField.placeholder = @"请输入人数";
    _firstTextField.delegate = self;
    [self.view addSubview:_firstTextField];
}

- (void)press:(UIButton *)button {
    
    if (button.tag == 666) {
        _firstTextField.placeholder = @"请输入人名";
        self.label.text = @"请输入人名";
        self.arr = [_firstTextField.text intValue];
        button.tag = 1;
    } else if (button.tag == _arr){
        [self.array addObject:_firstTextField.text];
        AViewController *a = [[AViewController alloc] init];
        a.modalPresentationStyle = UIModalPresentationFullScreen;
        a.array = _array;
        [self presentViewController:a animated:YES completion:nil];
    } else {
        [self.array addObject:_firstTextField.text];
        button.tag++;
    }
    _firstTextField.text = @"";
}

//点击屏幕空白处调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //使虚拟键盘回收
    [_firstTextField resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    self.view.frame =CGRectMake(0.0f, -100,self.view.frame.size.width,self.view.frame.size.height);
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.view.frame =CGRectMake(0.0f, 0,self.view.frame.size.width,self.view.frame.size.height);
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
