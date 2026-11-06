.class public Lcom/wm65/launcher/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/MainActivity$PagerListener;,
        Lcom/wm65/launcher/MainActivity$QuoteSlot;
    }
.end annotation


# static fields
.field private static final PANEL_DRAWER:I = 0x1

.field private static final PANEL_NONE:I = 0x0

.field private static final PANEL_NOTES:I = 0x2

.field private static final PLUGINS_PER_PAGE:I = 0x6

.field private static final REQUEST_CORNER:I = 0x46

.field private static final REQUEST_HOME_ROLE:I = 0x5c

.field private static final REQUEST_LOGO_BOTTOM:I = 0x52

.field private static final REQUEST_LOGO_DRAWER:I = 0x53

.field private static final REQUEST_PICK:I = 0x29

.field private static final REQUEST_TAP_CLOCK:I = 0x50

.field private static final REQUEST_TAP_WEATHER:I = 0x51


# instance fields
.field private final mBadges:[Landroid/widget/TextView;

.field private mBigClock:Landroid/widget/TextView;

.field private mBigDate:Landroid/widget/TextView;

.field private mBottomLogo:Landroid/widget/ImageView;

.field private mBuiltAlign:I

.field private mBuiltOx:F

.field private mBuiltOy:F

.field private mBuiltPanelCount:I

.field private mBuiltReady:Z

.field private mBuiltScale:F

.field private mClockBox:Landroid/widget/LinearLayout;

.field private mClockPadPx:I

.field private mContainer:Landroid/widget/FrameLayout;

.field private final mCorners:[Landroid/widget/TextView;

.field private mDragLastX:F

.field private mDragLastY:F

.field private mDragMoved:Z

.field private mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

.field private final mHandler:Landroid/os/Handler;

.field private mInsetBottom:I

.field private mInsetTop:I

.field private mLastTapDidAction:Z

.field private mMediaMgr:Landroid/media/session/MediaSessionManager;

.field private mMsgBox:Landroid/widget/LinearLayout;

.field private mMusicBox:Landroid/widget/LinearLayout;

.field private mMusicPkg:Ljava/lang/String;

.field private mMusicText:Landroid/widget/TextView;

.field private mNotesPanel:Lcom/wm65/launcher/NotesPanel;

.field private mOpenPanel:I

.field private mOverlay:Landroid/widget/FrameLayout;

.field private mPager:Lcom/wm65/launcher/PanelPager;

.field private mPanelAnim:Landroid/animation/ValueAnimator;

.field private mPanelProgress:F

.field private mPickPluginIndex:I

.field private mPkgReceiver:Landroid/content/BroadcastReceiver;

.field private final mQuoteCb:Lcom/wm65/launcher/QuoteHelper$Callback;

.field private final mQuoteSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/wm65/launcher/MainActivity$QuoteSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/widget/LinearLayout;

.field private mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSidePadPx:I

.field private mStack:Landroid/widget/LinearLayout;

.field private mStage:Landroid/widget/FrameLayout;

.field private mSwipeBase:F

.field private mSwipeClaimed:Z

.field private mSwipeDownX:F

.field private mSwipeDownY:F

.field private mSwipeOpenSign:F

.field private mSwipeTracking:Z

.field private mSwipeVel:Landroid/view/VelocityTracker;

.field private final mTick:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTx:F

.field private mTy:F

.field private mWeatherBox:Landroid/widget/LinearLayout;

.field private final mWeatherCb:Lcom/wm65/launcher/WeatherHelper$Callback;

.field private mWeatherDays:Landroid/widget/LinearLayout;

.field private mWeatherLine:Landroid/widget/TextView;

.field private mWidgetMoveMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBigDate(Lcom/wm65/launcher/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContainer(Lcom/wm65/launcher/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragLastX(Lcom/wm65/launcher/MainActivity;)F
    .locals 0

    iget p0, p0, Lcom/wm65/launcher/MainActivity;->mDragLastX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragLastY(Lcom/wm65/launcher/MainActivity;)F
    .locals 0

    iget p0, p0, Lcom/wm65/launcher/MainActivity;->mDragLastY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragMoved(Lcom/wm65/launcher/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/wm65/launcher/MainActivity;->mDragMoved:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDrawerPanel(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/DrawerPanel;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/wm65/launcher/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTapDidAction(Lcom/wm65/launcher/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/wm65/launcher/MainActivity;->mLastTapDidAction:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMusicBox(Lcom/wm65/launcher/MainActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMusicPkg(Lcom/wm65/launcher/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mMusicPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMusicText(Lcom/wm65/launcher/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPager(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/PanelPager;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuoteCb(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/QuoteHelper$Callback;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mQuoteCb:Lcom/wm65/launcher/QuoteHelper$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWeatherCb(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/WeatherHelper$Callback;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/MainActivity;->mWeatherCb:Lcom/wm65/launcher/WeatherHelper$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidgetMoveMode(Lcom/wm65/launcher/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/wm65/launcher/MainActivity;->mWidgetMoveMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDragLastX(Lcom/wm65/launcher/MainActivity;F)V
    .locals 0

    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mDragLastX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDragLastY(Lcom/wm65/launcher/MainActivity;F)V
    .locals 0

    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mDragLastY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDragMoved(Lcom/wm65/launcher/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wm65/launcher/MainActivity;->mDragMoved:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInsetBottom(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mInsetBottom:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInsetTop(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mInsetTop:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTapDidAction(Lcom/wm65/launcher/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wm65/launcher/MainActivity;->mLastTapDidAction:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMusicPkg(Lcom/wm65/launcher/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wm65/launcher/MainActivity;->mMusicPkg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWidgetMoveMode(Lcom/wm65/launcher/MainActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wm65/launcher/MainActivity;->mWidgetMoveMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyCorners(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyCorners()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyPanelInsets(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyPanelInsets()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyWidgetTransform(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyWidgetTransform()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->buildPages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->buildPages(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcenterWidgets(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->centerWidgets()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclosePanel(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->closePanel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigCorner(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->configCorner(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigLogo(Lcom/wm65/launcher/MainActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wm65/launcher/MainActivity;->configLogo(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigTapTarget(Lcom/wm65/launcher/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->configTapTarget(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigWeather(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->configWeather()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensurePanel(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->ensurePanel(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchCorner(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->launchCorner(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveWidget(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->moveWidget()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveWidgetsBy(Lcom/wm65/launcher/MainActivity;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wm65/launcher/MainActivity;->moveWidgetsBy(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPanelSettled(Lcom/wm65/launcher/MainActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->onPanelSettled(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenCalendar(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->openCalendar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenDrawer(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->openDrawer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPicker(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->openPicker(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPkg(Lcom/wm65/launcher/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->openPkg(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPlugin(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->openPlugin(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenSmsApp(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->openSmsApp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenTapTarget(Lcom/wm65/launcher/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->openTapTarget(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshBadges(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshBadges()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshClocks(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshClocks()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshMessages(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshMessages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshMusic(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshMusic()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshQuoteUi(Lcom/wm65/launcher/MainActivity;Lcom/wm65/launcher/QuoteHelper$Quote;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->refreshQuoteUi(Lcom/wm65/launcher/QuoteHelper$Quote;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshWeatherUi(Lcom/wm65/launcher/MainActivity;Lcom/wm65/launcher/WeatherHelper$Weather;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->refreshWeatherUi(Lcom/wm65/launcher/WeatherHelper$Weather;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrowAt(Lcom/wm65/launcher/MainActivity;IF)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wm65/launcher/MainActivity;->rowAt(IF)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrowSizeDialog(Lcom/wm65/launcher/MainActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wm65/launcher/MainActivity;->rowSizeDialog(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrowView(Lcom/wm65/launcher/MainActivity;ILjava/lang/Integer;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wm65/launcher/MainActivity;->rowView(ILjava/lang/Integer;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveWidgetOffset(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->saveWidgetOffset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscaleWidgetDialog(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->scaleWidgetDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPanelProgress(Lcom/wm65/launcher/MainActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->setPanelProgress(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPluginMenu(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->showPluginMenu(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    const/4 v0, 0x4

    .line 109
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wm65/launcher/MainActivity;->mCorners:[Landroid/widget/TextView;

    .line 111
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mBadges:[Landroid/widget/TextView;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mPickPluginIndex:I

    .line 113
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltPanelCount:I

    .line 114
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltAlign:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 116
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltScale:F

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mQuoteSlots:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Lcom/wm65/launcher/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$1;-><init>(Lcom/wm65/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mQuoteCb:Lcom/wm65/launcher/QuoteHelper$Callback;

    .line 143
    new-instance v0, Lcom/wm65/launcher/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$2;-><init>(Lcom/wm65/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mTick:Ljava/lang/Runnable;

    .line 2407
    new-instance v0, Lcom/wm65/launcher/MainActivity$39;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$39;-><init>(Lcom/wm65/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mWeatherCb:Lcom/wm65/launcher/WeatherHelper$Callback;

    return-void
.end method

.method private addHintRow()V
    .locals 6

    .line 1020
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1021
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030019

    .line 1022
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, -0x33000001    # -1.3421772E8f

    .line 1023
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    .line 1024
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1025
    sget-object v2, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x67000000

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x0

    .line 1026
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/16 v2, 0x11

    .line 1027
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1029
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1030
    invoke-static {v1}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 1031
    new-instance v0, Lcom/wm65/launcher/MainActivity$20;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$20;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addMsgRow(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 1046
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1047
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1048
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 1049
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1051
    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1053
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1054
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 1055
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 1056
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1057
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x67000000

    .line 1058
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1059
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x2

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v6, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 1061
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1062
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1063
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, -0x33000001    # -1.3421772E8f

    .line 1064
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 1065
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1066
    sget-object p2, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1067
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1068
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1069
    invoke-virtual {v9, v4, v5, v8, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1071
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1073
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1074
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1075
    invoke-virtual {v1, v9, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1077
    :cond_0
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    :goto_0
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1082
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const v0, 0x7f030035

    invoke-virtual {p0, v0, p3}, Lcom/wm65/launcher/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, -0x915701

    .line 1083
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 1084
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1085
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1086
    invoke-virtual {p2, v4, v5, v8, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1087
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    invoke-static {v1}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 1090
    new-instance p2, Lcom/wm65/launcher/MainActivity$21;

    invoke-direct {p2, p0, p4}, Lcom/wm65/launcher/MainActivity$21;-><init>(Lcom/wm65/launcher/MainActivity;I)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    iget-object p2, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animatePanel(F)V
    .locals 6

    .line 1742
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPanelAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1743
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1745
    :cond_0
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mPanelProgress:F

    const/4 v1, 0x2

    .line 1746
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sub-float v0, p1, v0

    .line 1747
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x435c0000    # 220.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x5a

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1748
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1749
    new-instance v0, Lcom/wm65/launcher/MainActivity$30;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$30;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1755
    new-instance v0, Lcom/wm65/launcher/MainActivity$31;

    invoke-direct {v0, p0, p1}, Lcom/wm65/launcher/MainActivity$31;-><init>(Lcom/wm65/launcher/MainActivity;F)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1761
    iput-object v1, p0, Lcom/wm65/launcher/MainActivity;->mPanelAnim:Landroid/animation/ValueAnimator;

    .line 1762
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private applyCorners()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mCorners:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 467
    invoke-static {p0, v1}, Lcom/wm65/launcher/AppStore;->getCorner(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyCustomLogo(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 2163
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2166
    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2168
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    :cond_0
    const p2, 0x7f020002

    .line 2174
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private applyPanelInsets()V
    .locals 6

    .line 1712
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1713
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    if-eqz v1, :cond_0

    .line 1714
    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mInsetTop:I

    iget v3, p0, Lcom/wm65/launcher/MainActivity;->mInsetBottom:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/wm65/launcher/DrawerPanel;->setPadding(IIII)V

    .line 1716
    :cond_0
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    if-eqz v1, :cond_1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 1718
    iget v3, p0, Lcom/wm65/launcher/MainActivity;->mInsetTop:I

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/wm65/launcher/MainActivity;->mInsetBottom:I

    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v3, v2, v4}, Lcom/wm65/launcher/NotesPanel;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private applyWidgetTransform()V
    .locals 6

    .line 1200
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 1201
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1205
    :cond_0
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->effectiveScale()F

    move-result v0

    .line 1206
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 1207
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 1208
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1209
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1210
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->maxOffsetX()F

    move-result v0

    .line 1211
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->maxOffsetY()F

    move-result v1

    neg-float v2, v0

    .line 1212
    iget v4, p0, Lcom/wm65/launcher/MainActivity;->mTx:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mTx:F

    neg-float v0, v1

    .line 1213
    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mTy:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mTy:F

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->effectiveScale()F

    move-result v5

    .line 1214
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mTx:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1215
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mTy:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private attachWidgetDrag(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1223
    :cond_0
    new-instance v0, Lcom/wm65/launcher/MainActivity$22;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$22;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private badgeCountFor(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 412
    :cond_0
    const-string v1, "@dialer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    invoke-static {}, Lcom/wm65/launcher/NotifService;->phoneCount()I

    move-result p1

    return p1

    :cond_1
    const/16 v1, 0x2f

    .line 416
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 418
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 420
    :cond_2
    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    invoke-static {}, Lcom/wm65/launcher/NotifService;->wechatCount()I

    move-result p1

    return p1

    .line 423
    :cond_3
    invoke-static {p1}, Lcom/wm65/launcher/NotifService;->isPhonePkg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    invoke-static {}, Lcom/wm65/launcher/NotifService;->phoneCount()I

    move-result p1

    return p1

    .line 426
    :cond_4
    invoke-static {p1}, Lcom/wm65/launcher/NotifService;->isSmsPkg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 427
    invoke-static {}, Lcom/wm65/launcher/NotifService;->smsCount()I

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method private barBtn()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 433
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 434
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x42500000    # 52.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method private beginSwipe(I)Z
    .locals 6

    .line 1891
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-nez v0, :cond_3

    if-lez p1, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1893
    :goto_0
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->ensurePanel(I)V

    .line 1894
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->panelView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 1898
    :cond_1
    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    .line 1899
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1900
    iput v3, p0, Lcom/wm65/launcher/MainActivity;->mSwipeBase:F

    if-ne p1, v5, :cond_2

    move v1, v4

    .line 1901
    :cond_2
    iput v1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeOpenSign:F

    .line 1902
    invoke-direct {p0, v3}, Lcom/wm65/launcher/MainActivity;->setPanelProgress(F)V

    return v5

    :cond_3
    if-ne v0, v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    int-to-float p1, p1

    mul-float/2addr p1, v1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    return v2

    .line 1910
    :cond_5
    iput v4, p0, Lcom/wm65/launcher/MainActivity;->mSwipeBase:F

    neg-float p1, v1

    .line 1911
    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeOpenSign:F

    return v5
.end method

.method private buildBottomBar()Landroid/view/View;
    .locals 7

    .line 310
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 312
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 313
    invoke-static {}, Lcom/wm65/launcher/Ui;->bottomBarBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 316
    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v3, 0x2

    .line 318
    invoke-direct {p0, v3}, Lcom/wm65/launcher/MainActivity;->wrapCorner(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->barBtn()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 321
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 324
    iput-object v3, p0, Lcom/wm65/launcher/MainActivity;->mBottomLogo:Landroid/widget/ImageView;

    .line 325
    const-string v4, "logo_bottom"

    invoke-direct {p0, v3, v4}, Lcom/wm65/launcher/MainActivity;->applyCustomLogo(Landroid/widget/ImageView;Ljava/lang/String;)V

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 327
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 328
    invoke-static {v3}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 329
    new-instance v4, Lcom/wm65/launcher/MainActivity$8;

    invoke-direct {v4, p0}, Lcom/wm65/launcher/MainActivity$8;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    new-instance v4, Lcom/wm65/launcher/MainActivity$9;

    invoke-direct {v4, p0, v3}, Lcom/wm65/launcher/MainActivity$9;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 344
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 347
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x3

    .line 349
    invoke-direct {p0, v1}, Lcom/wm65/launcher/MainActivity;->wrapCorner(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->barBtn()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildPages()V
    .locals 1

    const/4 v0, 0x0

    .line 534
    invoke-direct {p0, v0}, Lcom/wm65/launcher/MainActivity;->buildPages(Z)V

    return-void
.end method

.method private buildPages(Z)V
    .locals 7

    if-nez p1, :cond_0

    .line 542
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {p1}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/wm65/launcher/MainActivity;->mBuiltPanelCount:I

    .line 543
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->panelCount(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/wm65/launcher/MainActivity;->mBuiltAlign:I

    .line 544
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetAlign(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/wm65/launcher/MainActivity;->mBuiltScale:F

    .line 545
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetScale(Landroid/content/Context;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOx:F

    .line 546
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetX(Landroid/content/Context;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOy:F

    .line 547
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetY(Landroid/content/Context;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/wm65/launcher/MainActivity;->mBuiltReady:Z

    .line 548
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 551
    :cond_0
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {p1}, Lcom/wm65/launcher/PanelPager;->getCurrentPage()I

    move-result p1

    .line 552
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mQuoteSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 553
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0}, Lcom/wm65/launcher/PanelPager;->removeAllViews()V

    .line 554
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->buildTodayPage()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wm65/launcher/PanelPager;->addView(Landroid/view/View;)V

    .line 555
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->panelCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v1, v0, 0x5

    .line 556
    div-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v5, v4, 0x6

    .line 559
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 560
    iget-object v6, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-direct {p0, v4, v5}, Lcom/wm65/launcher/MainActivity;->buildPluginPage(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/wm65/launcher/PanelPager;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    :cond_1
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltPanelCount:I

    .line 563
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetAlign(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltAlign:I

    .line 564
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetScale(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltScale:F

    .line 565
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetX(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOx:F

    .line 566
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetY(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOy:F

    .line 567
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltReady:Z

    .line 568
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/wm65/launcher/PanelPager;->snapToPage(I)V

    .line 569
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->cached(Landroid/content/Context;)Lcom/wm65/launcher/WeatherHelper$Weather;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->refreshWeatherUi(Lcom/wm65/launcher/WeatherHelper$Weather;)V

    .line 571
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshMessages()V

    .line 572
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshMusic()V

    .line 574
    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->cached(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->refreshQuoteUi(Lcom/wm65/launcher/QuoteHelper$Quote;)V

    return-void
.end method

.method private buildPluginPage(II)Landroid/view/View;
    .locals 6

    .line 1507
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1508
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1509
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 1512
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1514
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->buildQuoteStrip()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1518
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->buildPluginRow(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1519
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->rowWeight(Landroid/content/Context;I)F

    move-result v4

    invoke-direct {v3, v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1518
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildPluginRow(I)Landroid/view/View;
    .locals 14

    .line 1530
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1531
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1532
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1533
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/4 v4, 0x0

    .line 1536
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1538
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1539
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 1540
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1542
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v7, 0x4dffffff    # 5.3687088E8f

    const v8, 0x30ffffff

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v6, v0

    .line 1545
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    float-to-int v6, v0

    .line 1546
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v7, 0x40ffffff    # 7.9999995f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1547
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41900000    # 18.0f

    mul-float v6, v0, v5

    float-to-int v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    .line 1549
    invoke-virtual {v3, v6, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1551
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->panelApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 1552
    invoke-static {p0, v6}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-eqz v7, :cond_0

    .line 1554
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1555
    iget-object v6, v7, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1556
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41d00000    # 26.0f

    .line 1557
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1558
    sget-object v6, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v11, -0x67000000

    const/high16 v12, 0x40a00000    # 5.0f

    const/4 v13, 0x0

    .line 1559
    invoke-virtual {v5, v12, v13, v6, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1560
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1561
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1562
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1565
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1566
    iget-object v4, v7, Lcom/wm65/launcher/AppStore$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x42300000    # 44.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 1568
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1569
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1570
    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1572
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1574
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v6, :cond_1

    const v2, 0x7f030028

    goto :goto_0

    :cond_1
    const v2, 0x7f030075

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, -0x4c000001

    .line 1576
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1577
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1578
    sget-object v2, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1579
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1583
    :goto_1
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1584
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v0, v0

    .line 1585
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->rowWidth(Landroid/content/Context;I)F

    move-result p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {v2, p1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1587
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private buildQuoteStrip()Landroid/view/View;
    .locals 9

    .line 583
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 584
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 585
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 586
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/4 v5, 0x0

    .line 587
    invoke-virtual {v1, v3, v4, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 589
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 590
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 591
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 592
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, -0x14000001

    .line 595
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41700000    # 15.0f

    .line 596
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 597
    sget-object v6, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x11

    .line 598
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 599
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 600
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 601
    invoke-virtual {v4, v7, v8, v2, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 602
    const-string v2, "\u201c"

    const/high16 v6, 0x41900000    # 18.0f

    invoke-direct {p0, v2, v6, v0}, Lcom/wm65/launcher/MainActivity;->quoteDeco(Ljava/lang/String;FF)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    invoke-direct {v2, v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    const-string v2, "\u201d"

    invoke-direct {p0, v2, v6, v0}, Lcom/wm65/launcher/MainActivity;->quoteDeco(Ljava/lang/String;FF)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 606
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41400000    # 12.0f

    const v3, -0x4c000001

    .line 609
    invoke-direct {p0, v2, v3, v0}, Lcom/wm65/launcher/MainActivity;->quoteSmall(FIF)Landroid/widget/TextView;

    move-result-object v2

    .line 610
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41300000    # 11.0f

    const v6, -0x73000001

    .line 612
    invoke-direct {p0, v3, v6, v0}, Lcom/wm65/launcher/MainActivity;->quoteSmall(FIF)Landroid/widget/TextView;

    move-result-object v0

    .line 613
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    new-instance v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/wm65/launcher/MainActivity$QuoteSlot;-><init>(Lcom/wm65/launcher/MainActivity$QuoteSlot-IA;)V

    .line 617
    iput-object v4, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->line:Landroid/widget/TextView;

    .line 618
    iput-object v2, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->origin:Landroid/widget/TextView;

    .line 619
    iput-object v0, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->author:Landroid/widget/TextView;

    .line 620
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mQuoteSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private buildTodayPage()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x41900000    # 18.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 672
    iput v3, v0, Lcom/wm65/launcher/MainActivity;->mSidePadPx:I

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 673
    iput v3, v0, Lcom/wm65/launcher/MainActivity;->mClockPadPx:I

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 693
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 694
    iput-object v5, v0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    .line 695
    iget v6, v0, Lcom/wm65/launcher/MainActivity;->mSidePadPx:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 696
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 697
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 699
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 700
    iput-object v6, v0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    .line 701
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 702
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 703
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 716
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x30

    .line 718
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 719
    invoke-virtual {v5, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v13, v1, v12

    float-to-int v13, v13

    .line 725
    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/wm65/launcher/MainActivity;->buildQuoteStrip()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v6, v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 730
    iput-object v9, v0, Lcom/wm65/launcher/MainActivity;->mClockBox:Landroid/widget/LinearLayout;

    .line 731
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 732
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v13, 0x0

    .line 733
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v14, 0x41b00000    # 22.0f

    mul-float v15, v1, v14

    float-to-int v15, v15

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float v13, v1, v14

    float-to-int v13, v13

    .line 734
    invoke-virtual {v9, v4, v15, v4, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 736
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    .line 737
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 738
    iget-object v15, v0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    const/high16 v10, 0x42b00000    # 88.0f

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 739
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    sget-object v15, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 740
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v12, -0x67000000

    invoke-virtual {v10, v14, v15, v7, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 743
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 744
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 745
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    const v14, -0x4c000001

    .line 749
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 751
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    sget-object v14, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 752
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v10, v7, v15, v14, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 753
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 754
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 755
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v13, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 756
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    invoke-static {v9}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 761
    new-instance v10, Lcom/wm65/launcher/MainActivity$13;

    invoke-direct {v10, v0}, Lcom/wm65/launcher/MainActivity$13;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    new-instance v10, Lcom/wm65/launcher/MainActivity$14;

    invoke-direct {v10, v0}, Lcom/wm65/launcher/MainActivity$14;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 775
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    new-instance v14, Lcom/wm65/launcher/MainActivity$15;

    invoke-direct {v14, v0}, Lcom/wm65/launcher/MainActivity$15;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 784
    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    .line 788
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 789
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 790
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 791
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4, v13, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 793
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    const v14, 0x7f03007d

    .line 794
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(I)V

    .line 795
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    const/4 v14, -0x1

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 797
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    sget-object v14, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 798
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 799
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 800
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 801
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v10, v7, v15, v14, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 802
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherDays:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    .line 806
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 807
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherDays:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 808
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 810
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 811
    iget-object v12, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    iget-object v14, v0, Lcom/wm65/launcher/MainActivity;->mWeatherDays:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    invoke-static {v10}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 815
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/wm65/launcher/MainActivity$16;

    invoke-direct {v12, v0}, Lcom/wm65/launcher/MainActivity$16;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v10, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/wm65/launcher/MainActivity$17;

    invoke-direct {v12, v0}, Lcom/wm65/launcher/MainActivity$17;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 828
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-float/2addr v7, v1

    float-to-int v7, v7

    .line 830
    iput v7, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 831
    iget-object v7, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    .line 835
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 836
    iget-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v1, v10}, Lcom/wm65/launcher/Ui;->frostBg(FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 838
    iget-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v13, v4, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 839
    iget-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 842
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, v2

    const v12, 0x3f1eb852    # 0.62f

    mul-float/2addr v12, v2

    float-to-int v12, v12

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41600000    # 14.0f

    mul-float/2addr v12, v1

    float-to-int v12, v12

    .line 844
    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 845
    iget-object v13, v0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    .line 849
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 850
    iget-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 851
    iget-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    const/high16 v13, 0x41b00000    # 22.0f

    invoke-static {v1, v13}, Lcom/wm65/launcher/Ui;->frostBg(FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 853
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12, v4, v12, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 854
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 856
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    const/4 v4, -0x1

    .line 857
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 858
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 859
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    sget-object v4, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 860
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 861
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 862
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 863
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 864
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3eeb851f    # 0.46f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-direct {v1, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 866
    iget-object v4, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/wm65/launcher/MainActivity;->mMusicText:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 869
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/wm65/launcher/MainActivity$18;

    invoke-direct {v4, v0}, Lcom/wm65/launcher/MainActivity$18;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 877
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 878
    iget-object v3, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    invoke-static/range {p0 .. p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetX(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/wm65/launcher/MainActivity;->mTx:F

    .line 882
    invoke-static/range {p0 .. p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetY(Landroid/content/Context;)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/wm65/launcher/MainActivity;->mTy:F

    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/wm65/launcher/MainActivity;->applyWidgetTransform()V

    .line 884
    invoke-direct {v0, v9}, Lcom/wm65/launcher/MainActivity;->attachWidgetDrag(Landroid/view/View;)V

    .line 885
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/wm65/launcher/MainActivity;->attachWidgetDrag(Landroid/view/View;)V

    .line 886
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/wm65/launcher/MainActivity;->attachWidgetDrag(Landroid/view/View;)V

    .line 887
    iget-object v1, v0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/wm65/launcher/MainActivity;->attachWidgetDrag(Landroid/view/View;)V

    .line 891
    invoke-direct {v0, v5}, Lcom/wm65/launcher/MainActivity;->attachWidgetDrag(Landroid/view/View;)V

    .line 893
    new-instance v1, Lcom/wm65/launcher/MainActivity$19;

    invoke-direct {v1, v0}, Lcom/wm65/launcher/MainActivity$19;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-object v5
.end method

.method private buildTopBar()Landroid/view/View;
    .locals 6

    .line 291
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 293
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 294
    invoke-static {}, Lcom/wm65/launcher/Ui;->topBarBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 297
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 299
    invoke-direct {p0, v1}, Lcom/wm65/launcher/MainActivity;->wrapCorner(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->barBtn()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-direct {v3, v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    invoke-direct {p0, v5}, Lcom/wm65/launcher/MainActivity;->wrapCorner(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->barBtn()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private centerWidgets()V
    .locals 2

    const/4 v0, 0x0

    .line 1293
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mTx:F

    .line 1294
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mTy:F

    .line 1295
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyWidgetTransform()V

    .line 1296
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->saveWidgetOffset()V

    const v0, 0x7f030084

    const/4 v1, 0x0

    .line 1297
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private closePanel()V
    .locals 1

    .line 1662
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1665
    invoke-direct {p0, v0}, Lcom/wm65/launcher/MainActivity;->animatePanel(F)V

    return-void
.end method

.method private configCorner(I)V
    .locals 5

    .line 495
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->getCorner(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 496
    aget-object v2, v0, v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/CharSequence;

    const v4, 0x7f030012

    .line 498
    invoke-virtual {p0, v4}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f03005b

    .line 499
    invoke-virtual {p0, v1}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v1, 0x7f03005c

    .line 500
    invoke-virtual {p0, v1}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const v1, 0x7f030031

    .line 501
    invoke-virtual {p0, v1}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    new-instance v1, Lcom/wm65/launcher/MainActivity$12;

    invoke-direct {v1, p0, p1, v0}, Lcom/wm65/launcher/MainActivity$12;-><init>(Lcom/wm65/launcher/MainActivity;I[Ljava/lang/String;)V

    .line 496
    invoke-static {p0, v2, v3, v1}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method private configLogo(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 4

    const v0, 0x7f030030

    .line 2179
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f03002d

    .line 2181
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f03002f

    .line 2182
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f030069

    .line 2183
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f030031

    .line 2184
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/wm65/launcher/MainActivity$34;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/wm65/launcher/MainActivity$34;-><init>(Lcom/wm65/launcher/MainActivity;ILjava/lang/String;Landroid/widget/ImageView;)V

    .line 2179
    invoke-static {p0, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method private configTapTarget(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const v0, 0x7f030071

    goto :goto_0

    :cond_0
    const v0, 0x7f030074

    .line 2089
    :goto_0
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 2090
    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f030070

    .line 2092
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f030085

    .line 2093
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f03008d

    .line 2094
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f030083

    .line 2095
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v2, 0x7f030072

    .line 2096
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const v2, 0x7f030031

    .line 2097
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/wm65/launcher/MainActivity$32;

    invoke-direct {v2, p0, p1}, Lcom/wm65/launcher/MainActivity$32;-><init>(Lcom/wm65/launcher/MainActivity;Z)V

    .line 2090
    invoke-static {p0, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method private configWeather()V
    .locals 4

    const v0, 0x7f030074

    .line 2123
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f030070

    .line 2125
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f03007e

    .line 2126
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f030085

    .line 2127
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f03008d

    .line 2128
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v2, 0x7f030083

    .line 2129
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const v2, 0x7f030072

    .line 2130
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x7f030031

    .line 2131
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/wm65/launcher/MainActivity$33;

    invoke-direct {v2, p0}, Lcom/wm65/launcher/MainActivity$33;-><init>(Lcom/wm65/launcher/MainActivity;)V

    .line 2123
    invoke-static {p0, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method private cornerKey(I)Landroid/widget/TextView;
    .locals 5

    .line 439
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 440
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41880000    # 17.0f

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 442
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 445
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x67000000

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    .line 446
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 447
    invoke-static {v0}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 448
    new-instance v1, Lcom/wm65/launcher/MainActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/wm65/launcher/MainActivity$10;-><init>(Lcom/wm65/launcher/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    new-instance v1, Lcom/wm65/launcher/MainActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/wm65/launcher/MainActivity$11;-><init>(Lcom/wm65/launcher/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method private effectiveScale()F
    .locals 10

    .line 1113
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetScale(Landroid/content/Context;)F

    move-result v0

    .line 1114
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1117
    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1118
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x4

    .line 1125
    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/wm65/launcher/MainActivity;->mClockBox:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    aput-object v7, v4, v5

    const/4 v5, 0x3

    iget-object v7, p0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    move v7, v5

    :goto_0
    if-ge v6, v3, :cond_2

    .line 1126
    aget-object v8, v4, v6

    if-eqz v8, :cond_1

    .line 1127
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 1128
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    cmpl-float v3, v7, v5

    if-lez v3, :cond_3

    int-to-float v1, v1

    const v8, 0x3f3851ec    # 0.72f

    mul-float/2addr v1, v8

    div-float/2addr v1, v7

    .line 1132
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1134
    :cond_3
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    if-lez v2, :cond_4

    if-lez v1, :cond_4

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 1136
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1138
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_5
    :goto_1
    return v0
.end method

.method private ensurePanel(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    if-nez v0, :cond_0

    .line 1678
    new-instance p1, Lcom/wm65/launcher/DrawerPanel;

    new-instance v0, Lcom/wm65/launcher/MainActivity$28;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$28;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/wm65/launcher/DrawerPanel;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/DrawerPanel$Host;)V

    iput-object p1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    .line 1690
    invoke-virtual {p1, v1}, Lcom/wm65/launcher/DrawerPanel;->setVisibility(I)V

    .line 1691
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mOverlay:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->panelLp()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1692
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    if-nez p1, :cond_1

    .line 1693
    new-instance p1, Lcom/wm65/launcher/NotesPanel;

    new-instance v0, Lcom/wm65/launcher/MainActivity$29;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$29;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/wm65/launcher/NotesPanel;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NotesPanel$Host;)V

    iput-object p1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    .line 1699
    invoke-virtual {p1, v1}, Lcom/wm65/launcher/NotesPanel;->setVisibility(I)V

    .line 1700
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mOverlay:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->panelLp()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1702
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyPanelInsets()V

    return-void
.end method

.method private fitBigClock()V
    .locals 5

    .line 2472
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2475
    :cond_0
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2476
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2477
    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mSidePadPx:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mClockPadPx:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 2478
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-lez v1, :cond_4

    .line 2479
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 2482
    :cond_2
    iget-object v3, p0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/high16 v4, 0x42b00000    # 88.0f

    mul-float/2addr v4, v0

    .line 2484
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2485
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v0, v3

    mul-float/2addr v4, v1

    div-float/2addr v4, v2

    .line 2488
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2490
    :cond_3
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    :goto_1
    return-void
.end method

.method private handleLogoResult(ILandroid/content/Intent;)Z
    .locals 8

    const-string v0, ".png"

    const/4 v1, 0x0

    const/16 v2, 0x52

    if-eq p1, v2, :cond_0

    const/16 v3, 0x53

    if-eq p1, v3, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 2209
    const-string v2, "logo_bottom"

    goto :goto_1

    :cond_2
    const-string v2, "logo_drawer"

    :goto_1
    if-eqz p2, :cond_6

    .line 2210
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 2213
    :cond_3
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 2214
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const/high16 v5, 0x42c00000    # 96.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0, p2, v4}, Lcom/wm65/launcher/Ui;->circleFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const v4, 0x7f030076

    if-nez p2, :cond_4

    .line 2216
    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v3

    .line 2220
    :cond_4
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2221
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2222
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5f

    invoke-virtual {p2, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2224
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_5

    .line 2225
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mBottomLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 2226
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    .line 2227
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    if-eqz p1, :cond_6

    .line 2228
    invoke-virtual {p1}, Lcom/wm65/launcher/DrawerPanel;->applyCustomLogo()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 2221
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2231
    :catch_0
    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_3
    return v3
.end method

.method private handleSwipe(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    const/4 v5, 0x0

    if-eq v2, v3, :cond_6

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v2, v6, :cond_0

    if-eq v2, v7, :cond_6

    goto/16 :goto_5

    .line 1821
    :cond_0
    iget-boolean v2, p0, Lcom/wm65/launcher/MainActivity;->mSwipeTracking:Z

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 1824
    :cond_1
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1825
    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mSwipeDownX:F

    sub-float/2addr v0, v2

    .line 1826
    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mSwipeDownY:F

    sub-float/2addr v1, v2

    .line 1827
    iget-boolean v2, p0, Lcom/wm65/launcher/MainActivity;->mSwipeClaimed:Z

    if-nez v2, :cond_5

    .line 1830
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v8, 0x3fa66666    # 1.3f

    mul-float/2addr v6, v8

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Lcom/wm65/launcher/MainActivity;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    .line 1831
    iput-boolean v4, p0, Lcom/wm65/launcher/MainActivity;->mSwipeTracking:Z

    goto/16 :goto_5

    .line 1834
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Lcom/wm65/launcher/MainActivity;->mTouchSlop:I

    int-to-float v6, v6

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v8

    cmpl-float v2, v2, v6

    if-lez v2, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v6

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    cmpl-float v1, v0, v5

    if-lez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 1835
    :goto_0
    invoke-direct {p0, v1}, Lcom/wm65/launcher/MainActivity;->beginSwipe(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1836
    iput-boolean v3, p0, Lcom/wm65/launcher/MainActivity;->mSwipeClaimed:Z

    .line 1837
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1838
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1839
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 1842
    :cond_4
    iput-boolean v4, p0, Lcom/wm65/launcher/MainActivity;->mSwipeTracking:Z

    goto/16 :goto_5

    .line 1847
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeClaimed:Z

    if-eqz p1, :cond_e

    .line 1848
    invoke-direct {p0, v0}, Lcom/wm65/launcher/MainActivity;->progressFromDrag(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->setPanelProgress(F)V

    return v3

    .line 1855
    :cond_6
    iget-boolean v0, p0, Lcom/wm65/launcher/MainActivity;->mSwipeClaimed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1856
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1857
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    const/high16 v2, 0x45fa0000    # 8000.0f

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1858
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 1859
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mSwipeOpenSign:F

    mul-float/2addr p1, v0

    const v0, 0x44bb8000    # 1500.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    const v2, -0x3b448000    # -1500.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_3

    .line 1868
    :cond_9
    iget p1, p0, Lcom/wm65/launcher/MainActivity;->mPanelProgress:F

    const v0, 0x3e99999a    # 0.3f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1870
    :cond_a
    :goto_4
    invoke-direct {p0, v5}, Lcom/wm65/launcher/MainActivity;->animatePanel(F)V

    .line 1871
    iput-boolean v4, p0, Lcom/wm65/launcher/MainActivity;->mSwipeClaimed:Z

    .line 1872
    iput-boolean v4, p0, Lcom/wm65/launcher/MainActivity;->mSwipeTracking:Z

    .line 1873
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1874
    iput-object v1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    return v3

    .line 1877
    :cond_b
    iput-boolean v4, p0, Lcom/wm65/launcher/MainActivity;->mSwipeTracking:Z

    .line 1878
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 1879
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1880
    iput-object v1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    goto :goto_5

    .line 1809
    :cond_c
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mSwipeDownX:F

    .line 1810
    iput v1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeDownY:F

    .line 1811
    iput-boolean v3, p0, Lcom/wm65/launcher/MainActivity;->mSwipeTracking:Z

    .line 1812
    iput-boolean v4, p0, Lcom/wm65/launcher/MainActivity;->mSwipeClaimed:Z

    .line 1813
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 1814
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1816
    :cond_d
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mSwipeVel:Landroid/view/VelocityTracker;

    .line 1817
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_e
    :goto_5
    return v4
.end method

.method private hit(Landroid/view/View;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1927
    :cond_0
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->pageOf(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1931
    :cond_1
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v2}, Lcom/wm65/launcher/PanelPager;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    .line 1932
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private launchCorner(I)V
    .locals 1

    .line 473
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->getCorner(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 474
    const-string v0, "@settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/wm65/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 476
    invoke-static {p0}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    return-void

    .line 479
    :cond_0
    const-string v0, "@dialer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    return-void

    .line 483
    :cond_1
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 484
    invoke-virtual {v0, p0}, Lcom/wm65/launcher/AppStore$AppInfo;->launchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 488
    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const p1, 0x7f030008

    const/4 v0, 0x0

    .line 489
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method private maxOffsetX()F
    .locals 6

    .line 1151
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    int-to-float v3, v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/wm65/launcher/MainActivity;->mClockBox:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_a
    iget-object v4, p0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_b
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->effectiveScale()F

    move-result v4

    mul-float/2addr v2, v4

    sub-float v2, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    cmpg-float v4, v2, v1

    if-lez v4, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private maxOffsetY()F
    .locals 3

    .line 1186
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->effectiveScale()F

    move-result v2

    mul-float/2addr v0, v2

    .line 1190
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mStage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private maybePromptDefaultHome()V
    .locals 9

    .line 2518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    .line 2521
    :cond_0
    const-string v0, "role"

    .line 2522
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_4

    .line 2523
    const-string v1, "android.app.role.HOME"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2526
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 2529
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2530
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-string v6, "home_prompt_last"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v7, 0xea60

    cmp-long v3, v3, v7

    if-gez v3, :cond_3

    return-void

    .line 2534
    :cond_3
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2535
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030025

    .line 2536
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f030023

    .line 2537
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/wm65/launcher/MainActivity$40;

    invoke-direct {v2, p0, v0}, Lcom/wm65/launcher/MainActivity$40;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/app/role/RoleManager;)V

    const v0, 0x7f030024

    .line 2538
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030022

    const/4 v2, 0x0

    .line 2550
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2551
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method

.method private moveWidget()V
    .locals 2

    const/4 v0, 0x1

    .line 1302
    iput-boolean v0, p0, Lcom/wm65/launcher/MainActivity;->mWidgetMoveMode:Z

    const/4 v1, 0x0

    .line 1305
    iput-boolean v1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeTracking:Z

    .line 1306
    iput-boolean v1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeClaimed:Z

    const v1, 0x7f030089

    .line 1307
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private moveWidgetsBy(FF)V
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mStack:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 1273
    :cond_0
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mTx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mTx:F

    .line 1274
    iget p1, p0, Lcom/wm65/launcher/MainActivity;->mTy:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mTy:F

    .line 1275
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyWidgetTransform()V

    return-void
.end method

.method private onPanelSettled(F)V
    .locals 3

    const v0, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p1, :cond_2

    .line 1767
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1768
    invoke-virtual {p1, v1}, Lcom/wm65/launcher/DrawerPanel;->setVisibility(I)V

    .line 1769
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    invoke-virtual {p1, v2}, Lcom/wm65/launcher/DrawerPanel;->setTranslationX(F)V

    .line 1771
    :cond_0
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    if-eqz p1, :cond_1

    .line 1772
    invoke-virtual {p1, v1}, Lcom/wm65/launcher/NotesPanel;->setVisibility(I)V

    .line 1773
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    invoke-virtual {p1, v2}, Lcom/wm65/launcher/NotesPanel;->setTranslationX(F)V

    :cond_1
    const/4 p1, 0x0

    .line 1775
    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    .line 1776
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1777
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1778
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1779
    iput v2, p0, Lcom/wm65/launcher/MainActivity;->mPanelProgress:F

    goto :goto_0

    .line 1781
    :cond_2
    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mPanelProgress:F

    .line 1782
    invoke-direct {p0, v0}, Lcom/wm65/launcher/MainActivity;->setPanelProgress(F)V

    :goto_0
    return-void
.end method

.method private openCalendar()V
    .locals 11

    .line 2002
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "time"

    .line 2003
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2005
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2006
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2007
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2008
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2013
    :catch_0
    const-string v9, "com.vivo.calendar"

    const-string v10, "com.hihonor.calendar"

    const-string v2, "com.google.android.calendar"

    const-string v3, "com.android.calendar"

    const-string v4, "com.miui.calendar"

    const-string v5, "com.coloros.calendar"

    const-string v6, "com.huawei.calendar"

    const-string v7, "com.samsung.android.calendar"

    const-string v8, "com.oppo.calendar"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 2017
    aget-object v3, v0, v2

    .line 2018
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2019
    invoke-static {p0, v3}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f030008

    .line 2023
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openClock()V
    .locals 5

    .line 1985
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1988
    :cond_0
    const-string v0, "com.coloros.alarmclock"

    const-string v1, "com.miui.clock"

    const-string v2, "com.google.android.deskclock"

    const-string v3, "com.android.deskclock"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 1990
    aget-object v3, v0, v2

    .line 1991
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1992
    invoke-static {p0, v3}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f030008

    .line 1996
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private openDrawer()V
    .locals 1

    const/4 v0, 0x1

    .line 1646
    invoke-direct {p0, v0}, Lcom/wm65/launcher/MainActivity;->openPanel(I)V

    return-void
.end method

.method private openPanel(I)V
    .locals 1

    .line 1650
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->ensurePanel(I)V

    .line 1651
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->panelView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1655
    :cond_0
    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    const/4 p1, 0x0

    .line 1656
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1657
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->animatePanel(F)V

    return-void
.end method

.method private openPicker(I)V
    .locals 1

    .line 2402
    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mPickPluginIndex:I

    .line 2403
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x29

    invoke-virtual {p0, p1, v0}, Lcom/wm65/launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2404
    invoke-static {p0}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    return-void
.end method

.method private openPkg(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1493
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1497
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1499
    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private openPlugin(I)V
    .locals 1

    .line 2237
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->panelApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2238
    invoke-static {p0, v0}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2240
    invoke-virtual {v0, p0}, Lcom/wm65/launcher/AppStore$AppInfo;->launchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_0

    .line 2241
    :cond_0
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2244
    :cond_1
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->openPicker(I)V

    :goto_0
    return-void
.end method

.method private openSmsApp()V
    .locals 4

    .line 1464
    :try_start_0
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 1467
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    invoke-static {p0, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    return-void

    .line 1475
    :cond_0
    const-string v0, "com.android.mms"

    const-string v1, "com.google.android.apps.messaging"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 1476
    aget-object v2, v0, v1

    .line 1477
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1479
    invoke-static {p0, v2}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1484
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1486
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1487
    invoke-static {p0, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private openTapTarget(Z)V
    .locals 4

    .line 2058
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->tapTarget(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2060
    invoke-static {p0, v0}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2061
    invoke-virtual {p1, p0}, Lcom/wm65/launcher/AppStore$AppInfo;->launchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x2f

    .line 2066
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    .line 2068
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2069
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    move-object v0, v2

    .line 2073
    :cond_2
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2074
    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const p1, 0x7f030008

    .line 2077
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2081
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->openClock()V

    goto :goto_0

    .line 2083
    :cond_5
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->openWeather()V

    :goto_0
    return-void
.end method

.method private openWeather()V
    .locals 10

    .line 2029
    :try_start_0
    const-string v0, "android.intent.action.MAIN"

    const-string v1, "android.intent.category.APP_WEATHER"

    invoke-static {v0, v1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2031
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2032
    invoke-static {p0, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-void

    .line 2038
    :catch_0
    :cond_0
    const-string v8, "com.google.android.apps.weather"

    const-string v9, "com.moji.mjweather"

    const-string v1, "com.miui.weather2"

    const-string v2, "com.huawei.android.totemweather"

    const-string v3, "com.coloros.weather"

    const-string v4, "com.oppo.weather"

    const-string v5, "com.vivo.weather"

    const-string v6, "com.samsung.android.weather"

    const-string v7, "com.htc.weather"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_2

    .line 2042
    aget-object v3, v0, v2

    .line 2043
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2044
    invoke-static {p0, v3}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f030078

    .line 2048
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2049
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mWeatherCb:Lcom/wm65/launcher/WeatherHelper$Callback;

    invoke-static {p0, v0}, Lcom/wm65/launcher/WeatherHelper;->forceRefresh(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V

    return-void
.end method

.method private pageOf(Landroid/view/View;)Landroid/view/View;
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    .line 1938
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1939
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1940
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private panelLp()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 1706
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private panelView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1670
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1672
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private preCreatePanels()V
    .locals 2

    .line 278
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/wm65/launcher/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/wm65/launcher/MainActivity$7;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private progressFromDrag(F)F
    .locals 3

    .line 1917
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    .line 1918
    iget v1, p0, Lcom/wm65/launcher/MainActivity;->mSwipeBase:F

    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mSwipeOpenSign:F

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1919
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private quoteDeco(Ljava/lang/String;FF)Landroid/widget/TextView;
    .locals 3

    .line 625
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0x7f000001

    .line 628
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    sget-object p1, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, 0x66000000

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 630
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p3, p1

    float-to-int p1, p3

    const/4 p2, 0x0

    .line 631
    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private quoteSmall(FIF)Landroid/widget/TextView;
    .locals 3

    .line 636
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 637
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 639
    sget-object p1, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 640
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    .line 641
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 642
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, -0x80000000

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 643
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    mul-float/2addr p3, v1

    float-to-int p1, p3

    const/4 p2, 0x0

    .line 644
    invoke-virtual {v0, p2, p1, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private refreshBadges()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 393
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mBadges:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 397
    :cond_0
    invoke-static {p0, v1}, Lcom/wm65/launcher/AppStore;->getCorner(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/wm65/launcher/MainActivity;->badgeCountFor(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    const/16 v4, 0x63

    if-le v3, v4, :cond_1

    .line 399
    const-string v3, "99+"

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 402
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private refreshClocks()V
    .locals 5

    .line 2494
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2495
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 2496
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mBigClock:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 2497
    new-instance v3, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    const-string v1, "HH:mm"

    goto :goto_0

    :cond_0
    const-string v1, "hh:mm"

    .line 2498
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2497
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2499
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->fitBigClock()V

    .line 2501
    :cond_1
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2503
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy\u5e74M\u6708d\u65e5"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2504
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2505
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mBigDate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private refreshMessages()V
    .locals 6

    .line 988
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 991
    :cond_0
    invoke-static {}, Lcom/wm65/launcher/NotifService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 995
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->addHintRow()V

    .line 996
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 999
    :cond_1
    invoke-static {}, Lcom/wm65/launcher/NotifService;->wechatCount()I

    move-result v0

    .line 1000
    invoke-static {}, Lcom/wm65/launcher/NotifService;->phoneCount()I

    move-result v2

    .line 1001
    invoke-static {}, Lcom/wm65/launcher/NotifService;->smsCount()I

    move-result v3

    .line 1002
    iget-object v4, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-lez v0, :cond_2

    const v4, 0x7f030039

    .line 1004
    invoke-virtual {p0, v4}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.tencent.mm"

    .line 1005
    invoke-static {v5}, Lcom/wm65/launcher/NotifService;->latestFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1004
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/wm65/launcher/MainActivity;->addMsgRow(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    if-lez v3, :cond_3

    const v0, 0x7f030038

    .line 1008
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-static {}, Lcom/wm65/launcher/NotifService;->smsLatest()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 1008
    invoke-direct {p0, v0, v4, v3, v5}, Lcom/wm65/launcher/MainActivity;->addMsgRow(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    if-lez v2, :cond_4

    const v0, 0x7f030037

    .line 1012
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-static {}, Lcom/wm65/launcher/NotifService;->phoneLatest()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1012
    invoke-direct {p0, v0, v3, v2, v4}, Lcom/wm65/launcher/MainActivity;->addMsgRow(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1015
    :cond_4
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private refreshMusic()V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 1438
    :cond_0
    new-instance v0, Lcom/wm65/launcher/MainActivity$27;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$27;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-static {p0, v0}, Lcom/wm65/launcher/FeedData;->fetch(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Cb;)V

    return-void
.end method

.method private refreshQuoteUi(Lcom/wm65/launcher/QuoteHelper$Quote;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v0, p1, Lcom/wm65/launcher/QuoteHelper$Quote;->origin:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/wm65/launcher/QuoteHelper$Quote;->origin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    iget-object v2, p1, Lcom/wm65/launcher/QuoteHelper$Quote;->author:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/wm65/launcher/QuoteHelper$Quote;->author:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 655
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "\u300a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "\u300c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u300b"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v1

    .line 659
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u2014\u2014 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2014\u2014"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    :goto_2
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mQuoteSlots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;

    .line 661
    iget-object v4, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->line:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/wm65/launcher/QuoteHelper$Quote;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v4, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->origin:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v4, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->author:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v4, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->origin:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_4

    :cond_6
    move v5, v7

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    iget-object v3, v3, Lcom/wm65/launcher/MainActivity$QuoteSlot;->author:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    :goto_5
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method private refreshWeatherUi(Lcom/wm65/launcher/WeatherHelper$Weather;)V
    .locals 11

    .line 905
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mWeatherDays:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 908
    :cond_0
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 909
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 911
    iget v3, p0, Lcom/wm65/launcher/MainActivity;->mSidePadPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/wm65/launcher/MainActivity;->mClockPadPx:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez p1, :cond_1

    .line 913
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    const v0, 0x7f03007d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 914
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mWeatherDays:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void

    .line 917
    :cond_1
    iget-object v2, p1, Lcom/wm65/launcher/WeatherHelper$Weather;->city:Ljava/lang/String;

    iget-object v3, p1, Lcom/wm65/launcher/WeatherHelper$Weather;->temp:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 918
    iget-object v4, p1, Lcom/wm65/launcher/WeatherHelper$Weather;->desc:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 919
    iget-object v4, p1, Lcom/wm65/launcher/WeatherHelper$Weather;->desc:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 921
    :cond_2
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mWeatherLine:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 923
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mWeatherDays:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 926
    iget-object v2, p1, Lcom/wm65/launcher/WeatherHelper$Weather;->days:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x428c0000    # 70.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    int-to-float v1, v1

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 929
    div-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 930
    iget-object p1, p1, Lcom/wm65/launcher/WeatherHelper$Weather;->days:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wm65/launcher/WeatherHelper$Day;

    .line 931
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 932
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 933
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 935
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 936
    iget-object v6, v2, Lcom/wm65/launcher/WeatherHelper$Day;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x4c000001

    .line 937
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41400000    # 12.0f

    .line 938
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 939
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v7, 0x11

    .line 940
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 941
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 944
    iget-object v8, v2, Lcom/wm65/launcher/WeatherHelper$Day;->emoji:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41a00000    # 20.0f

    .line 945
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 946
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 947
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v0

    float-to-int v9, v9

    .line 948
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 949
    invoke-virtual {v4, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    iget-object v5, v2, Lcom/wm65/launcher/WeatherHelper$Day;->desc:Ljava/lang/String;

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/wm65/launcher/WeatherHelper$Day;->desc:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 952
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 953
    iget-object v9, v2, Lcom/wm65/launcher/WeatherHelper$Day;->desc:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, -0x33000001    # -1.3421772E8f

    .line 954
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41200000    # 10.0f

    .line 955
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 956
    sget-object v9, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 957
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 958
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 959
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 960
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    mul-float v10, v0, v8

    float-to-int v10, v10

    .line 961
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 962
    invoke-virtual {v4, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    :cond_3
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 966
    iget-object v9, v2, Lcom/wm65/launcher/WeatherHelper$Day;->max:Ljava/lang/String;

    iget-object v2, v2, Lcom/wm65/launcher/WeatherHelper$Day;->min:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 968
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 969
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 970
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 971
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    mul-float/2addr v8, v0

    float-to-int v6, v8

    .line 972
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 973
    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mWeatherDays:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private registerPackageWatcher()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/wm65/launcher/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$6;-><init>(Lcom/wm65/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/wm65/launcher/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    :goto_0
    return-void
.end method

.method private rowAt(IF)Ljava/lang/Integer;
    .locals 5

    .line 1950
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0, p1}, Lcom/wm65/launcher/PanelPager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1951
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0}, Lcom/wm65/launcher/PanelPager;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 1955
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1956
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1957
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1958
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1959
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1960
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    .line 1961
    check-cast v3, Ljava/lang/Integer;

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private rowSizeDialog(IZ)V
    .locals 17

    move-object/from16 v8, p0

    .line 2281
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2282
    invoke-virtual/range {p0 .. p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 2285
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 2286
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2287
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, -0xde1dbd0

    .line 2288
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x41e00000    # 28.0f

    mul-float/2addr v3, v0

    .line 2289
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2290
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    .line 2291
    invoke-virtual {v10, v1, v2, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2293
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const v4, 0x7f030063

    goto :goto_0

    :cond_0
    const v4, 0x7f030066

    :goto_0
    add-int/lit8 v5, p1, 0x1

    .line 2294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lcom/wm65/launcher/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x150d01

    .line 2295
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41880000    # 17.0f

    .line 2296
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2297
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2298
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2300
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 2301
    invoke-static/range {p0 .. p1}, Lcom/wm65/launcher/AppStore;->rowWeight(Landroid/content/Context;I)F

    move-result v5

    goto :goto_1

    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/wm65/launcher/AppStore;->rowWidth(Landroid/content/Context;I)F

    move-result v5

    .line 2302
    :goto_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v11, "%.2f\u00d7"

    invoke-static {v6, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0x915701

    .line 2303
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 2304
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2305
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v11, 0x11

    .line 2306
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v11, v0

    float-to-int v11, v11

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v0

    float-to-int v12, v12

    const/4 v13, 0x0

    .line 2307
    invoke-virtual {v1, v13, v11, v13, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2308
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2310
    new-instance v12, Landroid/widget/SeekBar;

    invoke-direct {v12, v8}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    const/16 v14, 0x1a

    .line 2316
    invoke-virtual {v12, v14}, Landroid/widget/SeekBar;->setMax(I)V

    const v14, 0x3ecccccd    # 0.4f

    const v15, 0x3dcccccd    # 0.1f

    goto :goto_2

    :cond_2
    const/16 v14, 0xe

    .line 2321
    invoke-virtual {v12, v14}, Landroid/widget/SeekBar;->setMax(I)V

    const v14, 0x3e99999a    # 0.3f

    const v15, 0x3d4ccccd    # 0.05f

    :goto_2
    sub-float/2addr v5, v14

    div-float/2addr v5, v15

    .line 2323
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2324
    new-instance v5, Lcom/wm65/launcher/MainActivity$36;

    invoke-direct {v5, v8, v1, v14, v15}, Lcom/wm65/launcher/MainActivity$36;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/widget/TextView;FF)V

    invoke-virtual {v12, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2338
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2341
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_3

    const v16, 0x7f030061

    goto :goto_3

    :cond_3
    const v16, 0x7f030065

    :goto_3
    move/from16 v5, v16

    .line 2342
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, -0x75000001

    .line 2343
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2344
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2345
    sget-object v3, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 2346
    invoke-virtual {v1, v13, v0, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2347
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2349
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2350
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x800005

    .line 2351
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2352
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030031

    .line 2353
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2354
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2355
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2356
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2358
    invoke-virtual {v3, v2, v11, v2, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2359
    new-instance v0, Lcom/wm65/launcher/MainActivity$37;

    invoke-direct {v0, v8, v9}, Lcom/wm65/launcher/MainActivity$37;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2365
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030016

    .line 2366
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, -0x915701

    .line 2367
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2368
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2369
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2370
    invoke-virtual {v4, v2, v11, v2, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2371
    new-instance v11, Lcom/wm65/launcher/MainActivity$38;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v7, v3

    move/from16 v3, p2

    move-object v13, v4

    move/from16 v4, p1

    move-object v8, v5

    move-object/from16 v16, v9

    const/4 v9, -0x1

    move v5, v14

    move v14, v6

    move-object v6, v12

    move-object v12, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/wm65/launcher/MainActivity$38;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;ZIFLandroid/widget/SeekBar;F)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2383
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2384
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2385
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2387
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2388
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    .line 2390
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2391
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v14}, Landroid/view/Window;->setLayout(II)V

    .line 2395
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2398
    :cond_4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private rowView(ILjava/lang/Integer;)Landroid/view/View;
    .locals 4

    .line 1969
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0, p1}, Lcom/wm65/launcher/PanelPager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1970
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1973
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1974
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1975
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1976
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private saveWidgetOffset()V
    .locals 3

    .line 1280
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1281
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1285
    :cond_0
    iget v2, p0, Lcom/wm65/launcher/MainActivity;->mTx:F

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mTy:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v2, v0}, Lcom/wm65/launcher/AppStore;->setWidgetOffset(Landroid/content/Context;FF)V

    .line 1287
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetX(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOx:F

    .line 1288
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetY(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOy:F

    :cond_1
    :goto_0
    return-void
.end method

.method private scaleWidgetDialog()V
    .locals 14

    .line 1312
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1313
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1316
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 1317
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1318
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, -0xde1dbd0

    .line 1319
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x41e00000    # 28.0f

    mul-float/2addr v5, v1

    .line 1320
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1321
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v6, v1, v5

    float-to-int v6, v6

    .line 1322
    invoke-virtual {v3, v2, v4, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1324
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f03008d

    .line 1325
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, -0x150d01

    .line 1326
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41880000    # 17.0f

    .line 1327
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1328
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1329
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1331
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1332
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetScale(Landroid/content/Context;)F

    move-result v6

    .line 1333
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%.2f\u00d7"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, -0x915701

    .line 1334
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41700000    # 15.0f

    .line 1335
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1336
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v9, 0x11

    .line 1337
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v9, v1

    float-to-int v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v1

    float-to-int v10, v10

    const/4 v11, 0x0

    .line 1338
    invoke-virtual {v2, v11, v9, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1339
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1341
    new-instance v10, Landroid/widget/SeekBar;

    invoke-direct {v10, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v12, 0x1e

    .line 1342
    invoke-virtual {v10, v12}, Landroid/widget/SeekBar;->setMax(I)V

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v6, v12

    const v12, 0x3d4ccccd    # 0.05f

    div-float/2addr v6, v12

    .line 1343
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1344
    new-instance v6, Lcom/wm65/launcher/MainActivity$23;

    invoke-direct {v6, p0, v2}, Lcom/wm65/launcher/MainActivity$23;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v10, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1358
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v12, -0x2

    invoke-direct {v2, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f03008e

    .line 1362
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, -0x75000001

    .line 1363
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1364
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1365
    sget-object v5, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 1366
    invoke-virtual {v2, v11, v5, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1367
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1369
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1370
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, 0x800005

    .line 1371
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 1373
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f03005c

    .line 1374
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, -0x1f5fb0

    .line 1375
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 1376
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1377
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1378
    invoke-virtual {v5, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1379
    new-instance v6, Lcom/wm65/launcher/MainActivity$24;

    invoke-direct {v6, p0, v0}, Lcom/wm65/launcher/MainActivity$24;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1389
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v13, 0x7f030031

    .line 1390
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    .line 1391
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1392
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1393
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1394
    invoke-virtual {v6, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1395
    new-instance v4, Lcom/wm65/launcher/MainActivity$25;

    invoke-direct {v4, p0, v0}, Lcom/wm65/launcher/MainActivity$25;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1401
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v13, 0x7f030016

    .line 1402
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(I)V

    .line 1403
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1404
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1405
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1406
    invoke-virtual {v4, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1407
    new-instance v1, Lcom/wm65/launcher/MainActivity$26;

    invoke-direct {v1, p0, v0, v10}, Lcom/wm65/launcher/MainActivity$26;-><init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;Landroid/widget/SeekBar;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1416
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1417
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1418
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1420
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1421
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v12}, Landroid/view/Window;->setLayout(II)V

    .line 1425
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1428
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private setPanelProgress(F)V
    .locals 6

    .line 1725
    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mPanelProgress:F

    .line 1726
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1727
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/wm65/launcher/DrawerPanel;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mDrawerPanel:Lcom/wm65/launcher/DrawerPanel;

    neg-int v4, v0

    int-to-float v4, v4

    sub-float v5, v3, p1

    mul-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/wm65/launcher/DrawerPanel;->setTranslationX(F)V

    .line 1730
    :cond_0
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/wm65/launcher/NotesPanel;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1731
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    int-to-float v2, v0

    sub-float v4, v3, p1

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/wm65/launcher/NotesPanel;->setTranslationX(F)V

    .line 1733
    :cond_1
    iget v1, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    .line 1734
    :goto_0
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    int-to-float v0, v0

    const v4, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v4

    mul-float/2addr v0, p1

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1735
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    sub-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1737
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    const v1, 0x3f7eb852    # 0.995f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showPluginMenu(I)V
    .locals 4

    const v0, 0x7f03005a

    .line 2250
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f030012

    .line 2252
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f030060

    .line 2253
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f030064

    .line 2254
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f030062

    .line 2255
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v2, 0x7f030031

    .line 2256
    invoke-virtual {p0, v2}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/wm65/launcher/MainActivity$35;

    invoke-direct {v2, p0, p1}, Lcom/wm65/launcher/MainActivity$35;-><init>(Lcom/wm65/launcher/MainActivity;I)V

    .line 2250
    invoke-static {p0, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method private widestContentWidth()F
    .locals 6

    const/4 v0, 0x4

    .line 1176
    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mClockBox:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/wm65/launcher/MainActivity;->mWeatherBox:Landroid/widget/LinearLayout;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/wm65/launcher/MainActivity;->mMsgBox:Landroid/widget/LinearLayout;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/wm65/launcher/MainActivity;->mMusicBox:Landroid/widget/LinearLayout;

    aput-object v4, v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1177
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1178
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1179
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private wrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1592
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private wrapCorner(I)Landroid/view/View;
    .locals 6

    .line 358
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 359
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->cornerKey(I)Landroid/widget/TextView;

    move-result-object v2

    .line 361
    iget-object v3, p0, Lcom/wm65/launcher/MainActivity;->mCorners:[Landroid/widget/TextView;

    aput-object v2, v3, p1

    .line 362
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 366
    iget-object v3, p0, Lcom/wm65/launcher/MainActivity;->mBadges:[Landroid/widget/TextView;

    aput-object v2, v3, p1

    .line 367
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 368
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 370
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    .line 371
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 p1, 0x41880000    # 17.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 372
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 373
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v3, 0x0

    .line 374
    invoke-virtual {v2, p1, v3, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 375
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 376
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v3, v0

    .line 377
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v3, -0x1ab7b3

    .line 378
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 379
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x8

    .line 380
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const v5, 0x800035

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 384
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 385
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 386
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1797
    iget-boolean v0, p0, Lcom/wm65/launcher/MainActivity;->mWidgetMoveMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity;->handleSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1800
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 2416
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2417
    invoke-direct {p0, p1, p3}, Lcom/wm65/launcher/MainActivity;->handleLogoResult(ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2420
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/wm65/launcher/WallpaperHelper;->handleResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2421
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    return-void

    :cond_1
    const/16 v0, 0x29

    const/4 v1, 0x1

    .line 2424
    const-string v2, "key"

    const/4 v3, -0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mPickPluginIndex:I

    if-ltz v0, :cond_2

    .line 2426
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/wm65/launcher/AppStore;->setPanelApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 2427
    invoke-direct {p0, v1}, Lcom/wm65/launcher/MainActivity;->buildPages(Z)V

    return-void

    :cond_2
    const/16 v0, 0x50

    if-eq p1, v0, :cond_3

    const/16 v4, 0x51

    if-ne p1, v4, :cond_6

    :cond_3
    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_6

    .line 2432
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 p3, 0x0

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, p3

    .line 2434
    :goto_0
    invoke-static {p0, v1, p2}, Lcom/wm65/launcher/AppStore;->setTapTarget(Landroid/content/Context;ZLjava/lang/String;)V

    const p1, 0x7f030073

    .line 2435
    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    return-void

    :cond_6
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_8

    if-ne p2, v3, :cond_8

    if-eqz p3, :cond_8

    .line 2440
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2442
    invoke-static {p0, p1}, Lcom/wm65/launcher/NotesBoard;->applyPickedApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2443
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mNotesPanel:Lcom/wm65/launcher/NotesPanel;

    if-eqz p1, :cond_7

    .line 2444
    invoke-virtual {p1}, Lcom/wm65/launcher/NotesPanel;->rebuild()V

    :cond_7
    return-void

    :cond_8
    const/16 v0, 0x46

    if-lt p1, v0, :cond_9

    const/16 v1, 0x4a

    if-ge p1, v1, :cond_9

    if-ne p2, v3, :cond_9

    if-eqz p3, :cond_9

    sub-int/2addr p1, v0

    .line 2452
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2454
    invoke-static {p0, p2}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2456
    iget-object p3, p2, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/wm65/launcher/AppStore$AppInfo;->key()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/wm65/launcher/AppStore;->setCorner(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 2457
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyCorners()V

    :cond_9
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 2680
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    if-eqz v0, :cond_0

    .line 2681
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->closePanel()V

    return-void

    .line 2684
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0}, Lcom/wm65/launcher/PanelPager;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2685
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wm65/launcher/PanelPager;->smoothToPage(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    new-instance p1, Lcom/wm65/launcher/MainActivity$3;

    invoke-direct {p1, p0}, Lcom/wm65/launcher/MainActivity$3;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->warmUp(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 170
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/wm65/launcher/MainActivity;->mTouchSlop:I

    .line 171
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->migrateV31Layout(Landroid/content/Context;)V

    .line 172
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->migrateV33Transform(Landroid/content/Context;)V

    .line 173
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->migrateV35Layout(Landroid/content/Context;)V

    .line 174
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->migrateV36Center(Landroid/content/Context;)V

    .line 175
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->migrateV37Center(Landroid/content/Context;)V

    .line 176
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->migrateV38Center(Landroid/content/Context;)V

    .line 178
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->buildTopBar()Landroid/view/View;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance v0, Lcom/wm65/launcher/PanelPager;

    new-instance v1, Lcom/wm65/launcher/MainActivity$PagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wm65/launcher/MainActivity$PagerListener;-><init>(Lcom/wm65/launcher/MainActivity;Lcom/wm65/launcher/MainActivity$PagerListener-IA;)V

    invoke-direct {v0, p0, v1}, Lcom/wm65/launcher/PanelPager;-><init>(Landroid/content/Context;Lcom/wm65/launcher/PanelPager$Listener;)V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    .line 184
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->buildBottomBar()Landroid/view/View;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wm65/launcher/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 191
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wm65/launcher/MainActivity;->mOverlay:Landroid/widget/FrameLayout;

    .line 194
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/wm65/launcher/MainActivity;->setContentView(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, v1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    .line 202
    new-instance v1, Lcom/wm65/launcher/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/wm65/launcher/MainActivity$4;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-static {p0, v1}, Lcom/wm65/launcher/WallpaperHelper;->listenForSystemChanges(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 210
    new-instance v1, Lcom/wm65/launcher/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/wm65/launcher/MainActivity$5;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-static {p0, p1, v0, v1}, Lcom/wm65/launcher/Ui;->edgeBars(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Lcom/wm65/launcher/Ui$InsetsSink;)V

    .line 218
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->buildPages()V

    .line 219
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity;->mQuoteCb:Lcom/wm65/launcher/QuoteHelper$Callback;

    invoke-static {p0, p1}, Lcom/wm65/launcher/QuoteHelper;->refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/QuoteHelper$Callback;)V

    .line 220
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->preCreatePanels()V

    .line 221
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->registerPackageWatcher()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 2666
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2668
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2671
    :catchall_0
    iput-object v1, p0, Lcom/wm65/launcher/MainActivity;->mPkgReceiver:Landroid/content/BroadcastReceiver;

    .line 2673
    :cond_0
    sput-object v1, Lcom/wm65/launcher/NotifService;->sOnCountsChanged:Ljava/lang/Runnable;

    .line 2674
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2675
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 2651
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2652
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2653
    sput-object v0, Lcom/wm65/launcher/NotifService;->sOnCountsChanged:Ljava/lang/Runnable;

    .line 2655
    :try_start_0
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mMediaMgr:Landroid/media/session/MediaSessionManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-eqz v2, :cond_0

    .line 2656
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    :catchall_0
    :cond_0
    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 2556
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2557
    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/wm65/launcher/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2560
    :cond_0
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->maybePromptDefaultHome()V

    .line 2561
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mQuoteCb:Lcom/wm65/launcher/QuoteHelper$Callback;

    invoke-static {p0, v0}, Lcom/wm65/launcher/QuoteHelper;->refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/QuoteHelper$Callback;)V

    .line 2562
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->applyCorners()V

    .line 2565
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mOpenPanel:I

    if-nez v0, :cond_1

    .line 2566
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2567
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2568
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 2571
    :cond_1
    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltPanelCount:I

    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->panelCount(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltAlign:I

    .line 2572
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetAlign(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltScale:F

    .line 2573
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetScale(Landroid/content/Context;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOx:F

    .line 2574
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetX(Landroid/content/Context;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltOy:F

    .line 2575
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetOffsetY(Landroid/content/Context;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/wm65/launcher/MainActivity;->mBuiltReady:Z

    if-nez v0, :cond_3

    .line 2576
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2577
    :cond_2
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->buildPages()V

    .line 2579
    :cond_3
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mPager:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0}, Lcom/wm65/launcher/PanelPager;->resetOffsets()V

    .line 2580
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    .line 2581
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshClocks()V

    .line 2582
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshMusic()V

    .line 2583
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshMessages()V

    .line 2585
    new-instance v0, Lcom/wm65/launcher/MainActivity$41;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$41;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-static {p0, v0}, Lcom/wm65/launcher/AppStore;->refreshNewApps(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 2594
    new-instance v0, Lcom/wm65/launcher/MainActivity$42;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$42;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-static {p0, v0}, Lcom/wm65/launcher/WallpaperHelper;->syncSystemIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 2603
    new-instance v0, Lcom/wm65/launcher/MainActivity$43;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$43;-><init>(Lcom/wm65/launcher/MainActivity;)V

    invoke-static {p0, v0}, Lcom/wm65/launcher/WallpaperHelper;->maybeBingDaily(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 2611
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mWeatherCb:Lcom/wm65/launcher/WeatherHelper$Callback;

    invoke-static {p0, v0}, Lcom/wm65/launcher/WeatherHelper;->refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V

    .line 2612
    invoke-direct {p0}, Lcom/wm65/launcher/MainActivity;->refreshBadges()V

    .line 2614
    new-instance v0, Lcom/wm65/launcher/MainActivity$44;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$44;-><init>(Lcom/wm65/launcher/MainActivity;)V

    sput-object v0, Lcom/wm65/launcher/NotifService;->sOnCountsChanged:Ljava/lang/Runnable;

    .line 2623
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2624
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2627
    :try_start_0
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMediaMgr:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_4

    .line 2628
    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Lcom/wm65/launcher/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMediaMgr:Landroid/media/session/MediaSessionManager;

    .line 2630
    :cond_4
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mMediaMgr:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-nez v0, :cond_5

    .line 2631
    new-instance v0, Lcom/wm65/launcher/MainActivity$45;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/MainActivity$45;-><init>(Lcom/wm65/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/wm65/launcher/MainActivity;->mSessionsListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 2641
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity;->mMediaMgr:Landroid/media/session/MediaSessionManager;

    .line 2642
    invoke-static {p0}, Lcom/wm65/launcher/NotifService;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/wm65/launcher/MainActivity;->mHandler:Landroid/os/Handler;

    .line 2641
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method
