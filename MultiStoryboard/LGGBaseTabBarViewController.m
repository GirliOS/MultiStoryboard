//
//  LGGBaseTabBarViewController.m
//  MultiStoryboard
//
//  Created by girlios on 8/13/15.
//  Copyright (c) 2015 GirliOS. All rights reserved.
//

#import "LGGBaseTabBarViewController.h"

@interface LGGBaseTabBarViewController ()

@property (nonatomic, strong) UIViewController *oneViewController;
@property (nonatomic, strong) UIViewController *twoViewController;
@property (nonatomic, strong) UIViewController *threeViewController;
@property (nonatomic, strong) UIViewController *fourViewController;

@end

@implementation LGGBaseTabBarViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self setUpViewControllers];
}

- (void)setUpViewControllers {
    
    self.oneViewController = [self viewControllerWithIdentifier:@"OneFirst" inStoryboard:@"One"];
    self.oneViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Girl" image:nil selectedImage:nil];
    self.twoViewController = [self viewControllerWithIdentifier:@"TwoFirst" inStoryboard:@"Two"];
    self.twoViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Learn" image:nil selectedImage:nil];
    self.threeViewController = [self viewControllerWithIdentifier:@"ThreeFirst" inStoryboard:@"Three"];
    self.threeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"iOS" image:nil selectedImage:nil];
    self.fourViewController = [self viewControllerWithIdentifier:@"FourFirst" inStoryboard:@"Four"];
    self.fourViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Storyboard" image:nil selectedImage:nil];
    self.viewControllers = @[self.oneViewController,self.twoViewController, self.threeViewController, self.fourViewController];
    
}

- (id)viewControllerWithIdentifier:(NSString *)identifier inStoryboard:(NSString *)storyboardName {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    if (storyboard) {
        return [storyboard instantiateViewControllerWithIdentifier:identifier];
    } else {
        return nil;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
