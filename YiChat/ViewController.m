//
//  ViewController.m
//  YiChat
//
//  Created by lunarboat on 15/9/19.
//  Copyright © 2015年 lunarboat. All rights reserved.
//

#import "ViewController.h"
#import "RevealAnimator.h"
#import "LoginViewController.h"
#import "tabBarViewController.h"
#import "ASIRequestOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
//    self.navigationController.delegate = self;
    
    if ([ASIRequestOperation isLogin]) {
        [self performSelector:@selector(GoToTabBarController) withObject:nil afterDelay:1];
    }else{
        [self performSelector:@selector(GoToLoginController) withObject:nil afterDelay:1];
    }
    
}


- (void)GoToLoginController{
    LoginViewController *loginVc = [[LoginViewController alloc]init];
    [loginVc setGoToTabBarControllerblock:^{
        [self GoToTabBarController];
    }];
    

    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:loginVc];
    nav.modalPresentationStyle = UIModalPresentationCustom;
    nav.transitioningDelegate = self;
    [self presentViewController:nav animated:YES completion:nil];

}

- (void)GoToTabBarController{
    
    tabBarViewController *tabBar = [[tabBarViewController alloc]init];
//    tabBar.transitioningDelegate = self;
//    [self.navigationController pushViewController:tabBar animated:YES];
    [self presentViewController:tabBar animated:YES completion:nil];
    NSLog(@"tabBar:%d",self.navigationController.viewControllers.count);
}


-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [RevealAnimator new];
}
-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    return [RevealAnimator new];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
