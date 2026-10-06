#import <UIKit/UIKit.h>

@interface Y2KRDDraggableMenu : UIViewController
@property (nonatomic, strong) UIView *menuView;
@end

@implementation Y2KRDDraggableMenu

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ١. دروستکرنا مێنۆیا سەرەکی
    self.menuView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 240, 320)];
    self.menuView.backgroundColor = [UIColor colorWithRed:0.06 green:0.06 blue:0.10 alpha:0.92];
    self.menuView.layer.cornerRadius = 14;
    self.menuView.layer.borderWidth = 1.5;
    self.menuView.layer.borderColor = [[UIColor cyanColor] CGColor];
    
    // ٢. ناڤێ مێنۆیێ (Y2_KRD)
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 10, 185, 35)];
    titleLabel.text = @"⚡ Y2_KRD VIP ⚡";
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.font = [UIFont boldSystemFontOfSize:14];
    titleLabel.textAlignment = NSTextAlignmentLeft;
    [self.menuView addSubview:titleLabel];
    
    // ٣. ئایکۆن
    UIImage *iconImage = [UIImage systemImageNamed:@"bolt.fill"];
    UIImageView *iconView = [[UIImageView alloc] initWithImage:iconImage];
    iconView.frame = CGRectMake(15, 12, 25, 25);
    iconView.tintColor = [UIColor cyanColor];
    [self.menuView addSubview:iconView];
    
    // ٤. جووڵاندنا مێنۆیێ (Pan Gesture)
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    [self.menuView addGestureRecognizer:panGesture];
    
    // ٥. زێدەکرنا بۆ سەر شاشێ
    UIWindow *mainWindow = [[UIApplication sharedApplication] keyWindow];
    [mainWindow addSubview:self.menuView];
}

- (void)handlePan:(UIPanGestureRecognizer *)gesture {
    UIWindow *mainWindow = [[UIApplication sharedApplication] keyWindow];
    CGPoint translation = [gesture translationInView:mainWindow];
    CGPoint recognizerCenter = gesture.view.center;
    gesture.view.center = CGPointMake(recognizerCenter.x + translation.x, recognizerCenter.y + translation.y);
    [gesture setTranslation:CGPointZero inView:mainWindow];
}

@end

%ctor {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        Y2KRDDraggableMenu *menu = [[Y2KRDDraggableMenu alloc] init];
        UIWindow *window = [[UIApplication sharedApplication] keyWindow];
        [window.rootViewController addChildViewController:menu];
        [window.rootViewController.view addSubview:menu.view];
    });
}
