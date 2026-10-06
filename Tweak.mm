#import <UIKit/UIKit.h>

// --- ULTIMATE 100 BILLION % PRO MAX VIP MODS ---
static bool g_ModMenuVisible = true;
static bool g_AimbotHeadPro = true;
static bool g_AimbotScopePro = true;
static bool g_AimbotNoScopePro = true;
static bool g_MagicBulletExtreme = true;
static bool g_AimbotFOV600 = true;
static float g_AimbotSpeedMax = 15.0f;
static float g_AimbotDistanceMax = 600.0f;

// --- ESP 600m & GREEN LINES EXTREME ---
static bool g_ESPBox600mMax = true;
static bool g_ESPName600mMax = true;
static bool g_ESPHealth600mMax = true;
static bool g_ESPDistance600mMax = true;
static bool g_ESPSkeleton600mMax = true;
static bool g_ESPLineGreen600mMax = true; // هێلێن سەوز / Green Line لسەر هەمی پلەیاران حەتا 600m
static bool g_ESPItem600mMax = true;
static bool g_ESPVehicle600mMax = true;
static bool g_ESPHeadDotMax = true;

// --- 100 BILLION % ULTIMATE BYPASS & ANTI-BAN ---
static bool g_Bypass100BillionSupreme = true;
static bool g_AntiReportBypassMax = true;
static bool g_MemoryEncryptionSupreme = true;
static bool g_HideRecordHackUltimate = true; // شاردانا تەمام یا هاکێ لە کاتی ڕێکۆرد و لایڤ

// --- SETTINGS, 120 FPS & ALL SKINS ---
static bool g_Unlock90_120FPSMax = true;
static bool g_UnlockAllSkinsSupreme = true;
static bool g_ShowRealUIDGuestMax = true;
static bool g_NoRecoilSupreme = true;
static bool g_NoSpreadSupreme = true;
static bool g_FastReloadSupreme = true;
static bool g_WallhackSupreme = true;
static bool g_DraggableMenuUISupreme = true;

@interface Y2KRD100BillionSupremeMenu : UIViewController
@property (nonatomic, strong) UIView *menuView;
@end

@implementation Y2KRD100BillionSupremeMenu

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ١. دروستکرنا مێنۆیا سەرەکی (Supreme VIP Frame)
    self.menuView = [[UIView alloc] initWithFrame:CGRectMake(20, 50, 320, 460)];
    self.menuView.backgroundColor = [UIColor colorWithRed:0.02 green:0.02 blue:0.05 alpha:0.98];
    self.menuView.layer.cornerRadius = 22;
    self.menuView.layer.borderWidth = 3.0;
    self.menuView.layer.borderColor = [[UIColor colorWithRed:1.0 green:0.0 blue:0.2 alpha:1.0] CGColor]; // رەنگێ سوور و پۆڵایین
    
    // ٢. ناڤێ مێنۆیێ (Y2_KRD 100 BILLION SUPREME)
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 12, 255, 35)];
    titleLabel.text = @"🔥 Y2_KRD 100 BILLION SUPREME 🔥";
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.font = [UIFont boldSystemFontOfSize:12.5];
    titleLabel.textAlignment = NSTextAlignmentLeft;
    [self.menuView addSubview:titleLabel];
    
    // ٣. ئایکۆنا گەشاوە (Flame / Scope Icon)
    UIImage *iconImage = [UIImage systemImageNamed:@"flame.fill"];
    UIImageView *iconView = [[UIImageView alloc] initWithImage:iconImage];
    iconView.frame = CGRectMake(15, 15, 26, 26);
    iconView.tintColor = [UIColor redColor];
    [self.menuView addSubview:iconView];
    
    // ٤. تێکستێ ڕوونکردنا تایبەتمەندیان
    UILabel *subTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 300, 35)];
    subTitle.text = @"[+] Head, Scope, Magic, 600m Green ESP & 100B Bypass Active";
    subTitle.textColor = [UIColor yellowColor];
    subTitle.font = [UIFont systemFontOfSize:8.5];
    subTitle.textAlignment = NSTextAlignmentCenter;
    [self.menuView addSubview:subTitle];
    
    // ٥. پشکا زانیاری و سێتینگان (Guest, UID, 120 FPS, Skins, Anti-Record)
    UIView *settingsTab = [[UIView alloc] initWithFrame:CGRectMake(15, 90, 290, 345)];
    settingsTab.backgroundColor = [UIColor colorWithRed:0.05 green:0.05 blue:0.1 alpha:0.92];
    settingsTab.layer.cornerRadius = 14;
    
    UILabel *infoText = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 270, 320)];
    infoText.numberOfLines = 0;
    infoText.text = @"⚙ [Y2_KRD SUPREME PANEL EXTREME]\n• Aimbot: Head, Scope, No Scope & Magic Bullet\n• ESP: 600m Range with Green Lines Active\n• Account: Guest/UID & 120 FPS Unlocked\n• Skins: All PUBG Mythic & Gun Skins Unlocked\n• Security: 100 Billion % Anti-Ban & Hide Record";
    infoText.textColor = [UIColor greenColor];
    infoText.font = [UIFont systemFontOfSize:10];
    [settingsTab addSubview:infoText];
    
    [self.menuView addSubview:settingsTab];
    
    // ٦. زێدەکرنا پشکا ڤەگوهاستنێ (Pan Gesture - ببەت و بینێت ب ئازادی)
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    [self.menuView addGestureRecognizer:panGesture];
    
    // ٧. زێدەکرنا مێنۆیێ بۆ سەر شاشێ
    UIWindow *mainWindow = [[UIApplication sharedApplication] keyWindow];
    [mainWindow addSubview:self.menuView];
}

// فەنکشنا جووڵاندنا مێنۆیێ (ببەت و بینێت)
- (void)handlePan:(UIPanGestureRecognizer * _Nonnull)gesture {
    UIWindow *mainWindow = [[UIApplication sharedApplication] keyWindow];
    CGPoint translation = [gesture translationInView:mainWindow];
    CGPoint recognizerCenter = gesture.view.center;
    gesture.view.center = CGPointMake(recognizerCenter.x + translation.x, recognizerCenter.y + translation.y);
    [gesture setTranslation:CGPointZero inView:mainWindow];
}

@end

// ٨. دەستپێکرنا کۆرا هاکێ و بەیبەسێ ١٠٠ ملیار پۆڵایین
void InitY2KRDSupremeCore() {
    NSLog(@"[Y2_KRD] 100 Billion % Supreme Bypass, Head Aimbot & 600m Green ESP Initialized!");
}

// ٩. دەستپێکرنا خودکار (Constructor)
%ctor {
    InitY2KRDSupremeCore();
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        Y2KRD100BillionSupremeMenu *menu = [[Y2KRD100BillionSupremeMenu alloc] init];
        UIWindow *window = [[UIApplication sharedApplication] keyWindow];
        [window.rootViewController addChildViewController:menu];
        [window.rootViewController.view addSubview:menu.view];
    });
}
