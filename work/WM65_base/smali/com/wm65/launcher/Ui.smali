.class public final Lcom/wm65/launcher/Ui;
.super Ljava/lang/Object;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/Ui$InsetsSink;,
        Lcom/wm65/launcher/Ui$MenuHandler;,
        Lcom/wm65/launcher/Ui$TextHandler;,
        Lcom/wm65/launcher/Ui$NoteHandler;
    }
.end annotation


# static fields
.field public static final LIGHT:Landroid/graphics/Typeface;

.field public static final TEXT_DIM:I = -0x4c000001

.field public static final TEXT_MAIN:I = -0x150d01


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bottomBarBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .line 41
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v2, 0x14000000

    const/high16 v3, 0x38000000

    const/4 v4, 0x0

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v0
.end method

.method public static cardBg(FII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 317
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 318
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p1

    mul-float/2addr p1, p0

    .line 319
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static circleFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 264
    const-string v0, "r"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 265
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :try_start_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 268
    invoke-static {v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_0

    .line 270
    :try_start_2
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    move v4, v3

    .line 272
    :goto_0
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    mul-int/lit8 v6, p2, 0x2

    if-gt v5, v6, :cond_7

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    if-le v5, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 275
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 276
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :try_start_3
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 280
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    .line 282
    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2
    if-nez p1, :cond_3

    return-object v1

    .line 286
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 287
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p0, v2

    .line 288
    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, p0, v0, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 290
    invoke-static {p0, p2, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p0, :cond_4

    .line 293
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eq v0, p1, :cond_5

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    :cond_5
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 301
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 304
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    .line 307
    invoke-virtual {p1, p2, p2, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 278
    :try_start_5
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    :goto_2
    mul-int/lit8 v4, v4, 0x2

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    if-eqz v4, :cond_8

    .line 266
    :try_start_7
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v1
.end method

.method private static dialogBtn(Landroid/app/Activity;Ljava/lang/String;F)Landroid/widget/TextView;
    .locals 1

    .line 612
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, -0x150d01

    .line 614
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41700000    # 15.0f

    .line 615
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 616
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p0, 0x11

    .line 617
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p0, 0x41900000    # 18.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 620
    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static edgeBars(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, p2, v0}, Lcom/wm65/launcher/Ui;->edgeBars(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Lcom/wm65/launcher/Ui$InsetsSink;)V

    return-void
.end method

.method public static edgeBars(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Lcom/wm65/launcher/Ui$InsetsSink;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 66
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/wm65/launcher/Ui$1;

    invoke-direct {v1, p1, p2, p3}, Lcom/wm65/launcher/Ui$1;-><init>(Landroid/view/View;Landroid/view/View;Lcom/wm65/launcher/Ui$InsetsSink;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 97
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public static edgePad(Landroid/app/Activity;Landroid/view/View;)V
    .locals 8

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 108
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v7, Lcom/wm65/launcher/Ui$2;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/wm65/launcher/Ui$2;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 127
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method private static edit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;F)Landroid/widget/EditText;
    .locals 1

    .line 594
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    .line 595
    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 596
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const p0, -0x150d01

    .line 597
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTextColor(I)V

    const p0, 0x66ffffff

    .line 598
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 p0, 0x41800000    # 16.0f

    .line 599
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 p0, 0x1

    .line 600
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSingleLine(Z)V

    const p0, 0x22ffffff

    .line 601
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/high16 p0, 0x41600000    # 14.0f

    mul-float/2addr p3, p0

    float-to-int p0, p3

    const/4 p1, 0x0

    .line 602
    invoke-virtual {v0, p0, p1, p0, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    return-object v0
.end method

.method public static fade(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f010002

    const v1, 0x7f010003

    .line 366
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private static fieldLp(F)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 607
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42380000    # 46.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static frostBg(FF)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 227
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v2, 0x3cffffff    # 0.031249998f

    const v3, 0x24ffffff

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    mul-float/2addr p1, p0

    .line 230
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, 0x1

    float-to-int p0, p0

    .line 231
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const p1, 0x36ffffff

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public static inputDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$TextHandler;)V
    .locals 7

    .line 443
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 447
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 448
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 449
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v6, -0xde1dbd0

    .line 450
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v6, 0x41e00000    # 28.0f

    mul-float/2addr v6, v1

    .line 451
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 452
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41900000    # 18.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    .line 453
    invoke-virtual {v3, v2, v5, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 455
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x150d01

    .line 457
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41880000    # 17.0f

    .line 458
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 459
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 460
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    const p1, 0x66ffffff

    .line 466
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 467
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 468
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    const p1, 0x22ffffff

    .line 469
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 470
    invoke-virtual {v2, p1, p2, p1, p2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 471
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {p3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 473
    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 474
    invoke-virtual {v3, v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p3, 0x800005

    .line 478
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const p3, 0x7f030031

    .line 479
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, v1}, Lcom/wm65/launcher/Ui;->dialogBtn(Landroid/app/Activity;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object p3

    .line 480
    new-instance v4, Lcom/wm65/launcher/Ui$7;

    invoke-direct {v4, v0}, Lcom/wm65/launcher/Ui$7;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f030016

    .line 486
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Lcom/wm65/launcher/Ui;->dialogBtn(Landroid/app/Activity;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v4

    const v6, -0x915701

    .line 487
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    new-instance v6, Lcom/wm65/launcher/Ui$8;

    invoke-direct {v6, v0, p4, v2}, Lcom/wm65/launcher/Ui$8;-><init>(Landroid/app/Dialog;Lcom/wm65/launcher/Ui$TextHandler;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, v5, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 501
    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 502
    invoke-virtual {v3, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 505
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    const p3, 0x3f51eb85    # 0.82f

    mul-float/2addr p0, p3

    float-to-int p0, p0

    invoke-virtual {p1, p0, p4}, Landroid/view/Window;->setLayout(II)V

    .line 509
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static noteDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$NoteHandler;)V
    .locals 7

    .line 522
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 523
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 526
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 527
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 528
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, -0xde1dbd0

    .line 529
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x41e00000    # 28.0f

    mul-float/2addr v5, v1

    .line 530
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 531
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 532
    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 534
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 535
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x150d01

    .line 536
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41880000    # 17.0f

    .line 537
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 538
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 539
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p1, 0x7f03003f

    .line 542
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-static {p0, p2, p1, v1}, Lcom/wm65/launcher/Ui;->edit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;F)Landroid/widget/EditText;

    move-result-object p1

    .line 543
    invoke-static {v1}, Lcom/wm65/launcher/Ui;->fieldLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 544
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 545
    invoke-virtual {v3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p2, 0x7f03004c

    .line 548
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 547
    invoke-static {p0, p3, p2, v1}, Lcom/wm65/launcher/Ui;->edit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;F)Landroid/widget/EditText;

    move-result-object p2

    .line 549
    invoke-static {v1}, Lcom/wm65/launcher/Ui;->fieldLp(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 550
    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 551
    invoke-virtual {v3, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 554
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x800005

    .line 555
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v4, 0x7f030031

    .line 556
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Lcom/wm65/launcher/Ui;->dialogBtn(Landroid/app/Activity;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v4

    .line 557
    new-instance v5, Lcom/wm65/launcher/Ui$9;

    invoke-direct {v5, v0}, Lcom/wm65/launcher/Ui$9;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f030016

    .line 563
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Lcom/wm65/launcher/Ui;->dialogBtn(Landroid/app/Activity;Ljava/lang/String;F)Landroid/widget/TextView;

    move-result-object v5

    const v6, -0x915701

    .line 564
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    new-instance v6, Lcom/wm65/launcher/Ui$10;

    invoke-direct {v6, v0, p4, p1, p2}, Lcom/wm65/launcher/Ui$10;-><init>(Landroid/app/Dialog;Lcom/wm65/launcher/Ui$NoteHandler;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p4, -0x2

    invoke-direct {p1, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 579
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 580
    invoke-virtual {v3, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 583
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    const p2, 0x3f5c28f6    # 0.86f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {p1, p0, p4}, Landroid/view/Window;->setLayout(II)V

    .line 587
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static panelBg(F)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 241
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v2, -0xde1dbd0

    const v3, -0x19e1dbd0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x1

    float-to-int p0, p0

    .line 244
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method public static pickImage(Landroid/app/Activity;I)V
    .locals 2

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f03002e

    .line 255
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f030076

    const/4 v0, 0x0

    .line 257
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static pressFx(Landroid/view/View;)V
    .locals 1

    .line 414
    new-instance v0, Lcom/wm65/launcher/Ui$6;

    invoke-direct {v0}, Lcom/wm65/launcher/Ui$6;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static pulse(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f75c28f    # 0.96f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/wm65/launcher/Ui$5;

    invoke-direct {v1, p0}, Lcom/wm65/launcher/Ui$5;-><init>(Landroid/view/View;)V

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 406
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static safeStart(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 332
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 141
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/high16 v6, 0x41600000    # 14.0f

    mul-float v7, v4, v6

    float-to-int v7, v7

    .line 146
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 147
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v11, -0x9e1dbd0

    .line 149
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v5, v5

    .line 150
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 151
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v10, v4

    float-to-int v10, v10

    .line 152
    invoke-virtual {v8, v7, v5, v7, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v5, 0x11

    const v11, -0x4c000001

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 155
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 161
    invoke-virtual {v13, v12, v10, v12, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 162
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    move v1, v12

    .line 165
    :goto_0
    array-length v6, v2

    const/4 v13, -0x2

    const/4 v14, -0x1

    if-ge v1, v6, :cond_5

    .line 167
    array-length v6, v2

    sub-int/2addr v6, v9

    if-ne v1, v6, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    move v6, v12

    .line 168
    :goto_1
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 169
    aget-object v9, v2, v1

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_2

    move v9, v11

    goto :goto_2

    :cond_2
    const v9, -0x150d01

    .line 170
    :goto_2
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 171
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v6, :cond_3

    .line 172
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_3
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_3
    move-object/from16 v11, v16

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41700000    # 15.0f

    mul-float/2addr v11, v4

    float-to-int v11, v11

    .line 175
    invoke-virtual {v15, v7, v11, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    if-nez v6, :cond_4

    .line 178
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v11, 0x14ffffff

    .line 179
    invoke-virtual {v6, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float/2addr v9, v4

    .line 180
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 181
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-static {v15}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 184
    :cond_4
    new-instance v6, Lcom/wm65/launcher/Ui$3;

    move-object/from16 v9, p3

    invoke-direct {v6, v3, v9, v1}, Lcom/wm65/launcher/Ui$3;-><init>(Landroid/app/Dialog;Lcom/wm65/launcher/Ui$MenuHandler;I)V

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v4

    float-to-int v11, v11

    .line 195
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 196
    invoke-virtual {v8, v15, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    const v11, -0x4c000001

    goto :goto_0

    .line 200
    :cond_5
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    invoke-virtual {v0, v10, v12, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 205
    invoke-virtual {v1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v0, Lcom/wm65/launcher/Ui$4;

    invoke-direct {v0, v3}, Lcom/wm65/launcher/Ui$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 214
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 216
    invoke-virtual {v0, v14, v13}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x50

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 219
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f040001

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 222
    :cond_6
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static slideBackToHome(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f010008

    const v1, 0x7f01000b

    .line 376
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static slideDrawerBack(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f010004

    const v1, 0x7f010001

    .line 386
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static slideFromLeft(Landroid/app/Activity;)V
    .locals 2

    const/high16 v0, 0x7f010000

    const v1, 0x7f010005

    .line 381
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static slideFromRight(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f010009

    const v1, 0x7f01000a

    .line 371
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 354
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static topBarBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 35
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    filled-new-array {v2, v2, v2}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-object v0
.end method
