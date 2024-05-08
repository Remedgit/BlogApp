//
//  ViewController.m
//  Blog
//
//  Created by Remedgit on 2023/12/31.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIButton *myButton;

- (IBAction)buttonClicked:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.myButton.frame = CGRectMake(16, 59, 75, 35);
       [self.myButton setTitle:@"返回主页" forState:UIControlStateNormal];
    [self.myButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.myButton];
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(16, 102, 361, 716)];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://remedgit.github.io"]];
    [self.view addSubview: webView];
    [webView loadRequest:request];

}
- (IBAction)buttonClicked:(UIButton *)sender {
    NSLog(@"Refreshing");
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://remedgit.github.io"]];
    [webView loadRequest:request];

}

@end




