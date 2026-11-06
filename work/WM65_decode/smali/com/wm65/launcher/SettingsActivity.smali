.class public Lcom/wm65/launcher/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field private mBingStateView:Landroid/widget/TextView;

.field private mLockStateView:Landroid/widget/TextView;

.field private mNoteAppView:Landroid/widget/TextView;

.field private mNotifStateView:Landroid/widget/TextView;

.field private mPluginCountView:Landroid/widget/TextView;

.field private mScroll:Landroid/widget/ScrollView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScroll(Lcom/wm65/launcher/SettingsActivity;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/SettingsActivity;->mScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshState(Lcom/wm65/launcher/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/SettingsActivity;->refreshState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestDefaultHome(Lcom/wm65/launcher/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/SettingsActivity;->requestDefaultHome()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwidgetScaleDialog(Lcom/wm65/launcher/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/SettingsActivity;->widgetScaleDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private bodyText(F)Landroid/widget/TextView;
    .locals 2

    .line 362
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0x150d01

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 364
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    .line 365
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private card(F)Landroid/widget/LinearLayout;
    .locals 3

    .line 341
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 342
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x1a

    const v2, 0x38ffffff

    .line 343
    invoke-static {p1, v1, v2}, Lcom/wm65/launcher/Ui;->cardBg(FII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 345
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method

.method private cardLp(F)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 350
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 352
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method private pillButton(IF)Landroid/widget/TextView;
    .locals 2

    .line 371
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, -0x1

    .line 373
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 374
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 375
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 376
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x17

    const v1, -0x33d9ac86    # -4.3601384E7f

    .line 377
    invoke-static {p2, p1, v1}, Lcom/wm65/launcher/Ui;->cardBg(FII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    invoke-static {v0}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    return-object v0
.end method

.method private refreshState()V
    .locals 6

    .line 383
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity;->mPluginCountView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->panelCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f030058

    invoke-virtual {p0, v2, v1}, Lcom/wm65/launcher/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-static {}, Lcom/wm65/launcher/LockAccessibilityService;->isEnabled()Z

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity;->mLockStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f03002a

    goto :goto_0

    :cond_0
    const v2, 0x7f030029

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 386
    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity;->mLockStateView:Landroid/widget/TextView;

    const v2, -0x632392

    const v3, -0x1f5fb0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->app(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity;->mNoteAppView:Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f03003b

    invoke-virtual {p0, v4, v0}, Lcom/wm65/launcher/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity;->mBingStateView:Landroid/widget/TextView;

    .line 390
    invoke-static {p0}, Lcom/wm65/launcher/WallpaperHelper;->bingEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f03000f

    goto :goto_2

    :cond_2
    const v1, 0x7f03000e

    :goto_2
    invoke-virtual {p0, v1}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f030010

    .line 389
    invoke-virtual {p0, v4, v1}, Lcom/wm65/launcher/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-static {}, Lcom/wm65/launcher/NotifService;->isConnected()Z

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity;->mNotifStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v4, 0x7f030052

    goto :goto_3

    :cond_3
    const v4, 0x7f030051

    .line 394
    :goto_3
    invoke-virtual {p0, v4}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f030054

    .line 393
    invoke-virtual {p0, v5, v4}, Lcom/wm65/launcher/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity;->mNotifStateView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private requestDefaultHome()V
    .locals 3

    .line 515
    const-string v0, "android.app.role.HOME"

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 516
    const-string v1, "role"

    .line 517
    invoke-virtual {p0, v1}, Lcom/wm65/launcher/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    if-eqz v1, :cond_1

    .line 518
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f03001f

    const/4 v1, 0x0

    .line 520
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 524
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {p0, v0, v1}, Lcom/wm65/launcher/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 529
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HOME_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const v0, 0x7f030021

    const/4 v1, 0x1

    .line 533
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private wideLp(F)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 357
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42380000    # 46.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private widgetScaleDialog()V
    .locals 13

    .line 406
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {p0}, Lcom/wm65/launcher/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 410
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 411
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 412
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, -0xde1dbd0

    .line 414
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x41e00000    # 28.0f

    mul-float/2addr v5, v1

    .line 415
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 416
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float v6, v1, v5

    float-to-int v6, v6

    .line 417
    invoke-virtual {v3, v2, v4, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 419
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f03008d

    .line 420
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, -0x150d01

    .line 421
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41880000    # 17.0f

    .line 422
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 423
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 424
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-static {p0}, Lcom/wm65/launcher/AppStore;->widgetScale(Landroid/content/Context;)F

    move-result v6

    .line 428
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

    .line 429
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41700000    # 15.0f

    .line 430
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v9, 0x11

    .line 432
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v9, v1

    float-to-int v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v1

    float-to-int v10, v10

    const/4 v11, 0x0

    .line 433
    invoke-virtual {v2, v11, v9, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 434
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    new-instance v10, Landroid/widget/SeekBar;

    invoke-direct {v10, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v12, 0x1e

    .line 437
    invoke-virtual {v10, v12}, Landroid/widget/SeekBar;->setMax(I)V

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v6, v12

    const v12, 0x3d4ccccd    # 0.05f

    div-float/2addr v6, v12

    .line 438
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 439
    new-instance v6, Lcom/wm65/launcher/SettingsActivity$15;

    invoke-direct {v6, p0, v2}, Lcom/wm65/launcher/SettingsActivity$15;-><init>(Lcom/wm65/launcher/SettingsActivity;Landroid/widget/TextView;)V

    invoke-virtual {v10, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 453
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v12, -0x2

    invoke-direct {v2, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f030087

    .line 457
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, -0x75000001

    .line 458
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 460
    invoke-virtual {v2, v11, v5, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 461
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 464
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, 0x800005

    .line 465
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 467
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f030031

    .line 468
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 469
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 471
    invoke-virtual {v5, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 472
    new-instance v4, Lcom/wm65/launcher/SettingsActivity$16;

    invoke-direct {v4, p0, v0}, Lcom/wm65/launcher/SettingsActivity$16;-><init>(Lcom/wm65/launcher/SettingsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f030016

    .line 479
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 480
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 482
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 483
    invoke-virtual {v4, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 484
    new-instance v1, Lcom/wm65/launcher/SettingsActivity$17;

    invoke-direct {v1, p0, v0, v10}, Lcom/wm65/launcher/SettingsActivity$17;-><init>(Lcom/wm65/launcher/SettingsActivity;Landroid/app/Dialog;Landroid/widget/SeekBar;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 499
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/wm65/launcher/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2, v12}, Landroid/view/Window;->setLayout(II)V

    .line 503
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 539
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 540
    invoke-static {p0, p1, p2, p3}, Lcom/wm65/launcher/WallpaperHelper;->handleResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-static {p0, p1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    return-void

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 545
    const-string p1, "key"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 547
    invoke-static {p0, p1}, Lcom/wm65/launcher/NotesBoard;->applyPickedApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/wm65/launcher/SettingsActivity;->refreshState()V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 555
    invoke-virtual {p0}, Lcom/wm65/launcher/SettingsActivity;->finish()V

    .line 556
    invoke-static {p0}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/wm65/launcher/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 35
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wm65/launcher/SettingsActivity;->mScroll:Landroid/widget/ScrollView;

    .line 36
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 39
    iget-object v2, p0, Lcom/wm65/launcher/SettingsActivity;->mScroll:Landroid/widget/ScrollView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f030069

    .line 43
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 44
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41c00000    # 24.0f

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 46
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x67000000

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v6, 0x0

    .line 47
    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 48
    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->card(F)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/wm65/launcher/SettingsActivity;->mPluginCountView:Landroid/widget/TextView;

    .line 55
    new-instance v4, Lcom/wm65/launcher/SettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/wm65/launcher/SettingsActivity$1;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/wm65/launcher/SettingsActivity;->mPluginCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x7f030027

    .line 81
    invoke-direct {p0, v4, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v4

    .line 82
    new-instance v5, Lcom/wm65/launcher/SettingsActivity$2;

    invoke-direct {v5, p0}, Lcom/wm65/launcher/SettingsActivity$2;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f030032

    .line 90
    invoke-direct {p0, v5, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v5

    .line 91
    new-instance v6, Lcom/wm65/launcher/SettingsActivity$3;

    invoke-direct {v6, p0}, Lcom/wm65/launcher/SettingsActivity$3;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42c00000    # 96.0f

    mul-float/2addr v7, p1

    float-to-int v7, v7

    const/high16 v8, 0x42300000    # 44.0f

    mul-float/2addr v8, p1

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x41600000    # 14.0f

    mul-float/2addr v7, p1

    float-to-int v7, v7

    .line 101
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 102
    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->cardLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->card(F)Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f030013

    .line 109
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 110
    new-instance v4, Lcom/wm65/launcher/SettingsActivity$4;

    invoke-direct {v4, p0}, Lcom/wm65/launcher/SettingsActivity$4;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f030079

    .line 117
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 118
    new-instance v4, Lcom/wm65/launcher/SettingsActivity$5;

    invoke-direct {v4, p0}, Lcom/wm65/launcher/SettingsActivity$5;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 137
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f030090

    .line 140
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 141
    new-instance v4, Lcom/wm65/launcher/SettingsActivity$6;

    invoke-direct {v4, p0}, Lcom/wm65/launcher/SettingsActivity$6;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 173
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 174
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f030087

    .line 177
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 178
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v6, -0x66000001

    .line 179
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    invoke-virtual {v2, v3, v5, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f030067

    .line 184
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 185
    new-instance v7, Lcom/wm65/launcher/SettingsActivity$7;

    invoke-direct {v7, p0}, Lcom/wm65/launcher/SettingsActivity$7;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 192
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 193
    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->cardLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->card(F)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 198
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/wm65/launcher/SettingsActivity;->mNoteAppView:Landroid/widget/TextView;

    .line 199
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f03003e

    .line 200
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 201
    new-instance v7, Lcom/wm65/launcher/SettingsActivity$8;

    invoke-direct {v7, p0}, Lcom/wm65/launcher/SettingsActivity$8;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->cardLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->card(F)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 214
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/wm65/launcher/SettingsActivity;->mBingStateView:Landroid/widget/TextView;

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f030011

    .line 216
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 217
    new-instance v7, Lcom/wm65/launcher/SettingsActivity$9;

    invoke-direct {v7, p0}, Lcom/wm65/launcher/SettingsActivity$9;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f03000d

    .line 237
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 238
    new-instance v7, Lcom/wm65/launcher/SettingsActivity$10;

    invoke-direct {v7, p0}, Lcom/wm65/launcher/SettingsActivity$10;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 252
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 253
    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->cardLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->card(F)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 258
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/wm65/launcher/SettingsActivity;->mNotifStateView:Landroid/widget/TextView;

    .line 259
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f030053

    .line 260
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 261
    new-instance v7, Lcom/wm65/launcher/SettingsActivity$11;

    invoke-direct {v7, p0}, Lcom/wm65/launcher/SettingsActivity$11;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    const v7, 0x7f030050

    .line 274
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 275
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 276
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v7, p1

    float-to-int v7, v7

    .line 277
    invoke-virtual {v2, v3, v7, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->cardLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->card(F)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 283
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/wm65/launcher/SettingsActivity;->mLockStateView:Landroid/widget/TextView;

    .line 284
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f030055

    .line 285
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 286
    new-instance v8, Lcom/wm65/launcher/SettingsActivity$12;

    invoke-direct {v8, p0}, Lcom/wm65/launcher/SettingsActivity$12;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->bodyText(F)Landroid/widget/TextView;

    move-result-object v2

    const v8, 0x7f030068

    .line 299
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 300
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 301
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    invoke-virtual {v2, v3, v7, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 303
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->cardLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->card(F)Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f03005e

    .line 308
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 309
    new-instance v3, Lcom/wm65/launcher/SettingsActivity$13;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/SettingsActivity$13;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f03005f

    .line 319
    invoke-direct {p0, v2, p1}, Lcom/wm65/launcher/SettingsActivity;->pillButton(IF)Landroid/widget/TextView;

    move-result-object v2

    .line 320
    new-instance v3, Lcom/wm65/launcher/SettingsActivity$14;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/SettingsActivity$14;-><init>(Lcom/wm65/launcher/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->wideLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 330
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 331
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->cardLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/wm65/launcher/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 335
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity;->mScroll:Landroid/widget/ScrollView;

    invoke-static {p0, p1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    .line 336
    invoke-static {p0, v1}, Lcom/wm65/launcher/Ui;->edgePad(Landroid/app/Activity;Landroid/view/View;)V

    .line 337
    invoke-direct {p0}, Lcom/wm65/launcher/SettingsActivity;->refreshState()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 400
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 401
    invoke-direct {p0}, Lcom/wm65/launcher/SettingsActivity;->refreshState()V

    return-void
.end method
