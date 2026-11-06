.class public Lcom/wm65/launcher/DrawerPanel;
.super Landroid/widget/LinearLayout;
.source "DrawerPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/DrawerPanel$Host;
    }
.end annotation


# static fields
.field public static final REQUEST_LOGO_DRAWER:I = 0x53


# instance fields
.field private final mAct:Landroid/app/Activity;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wm65/launcher/AppStore$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellW:I

.field private final mDens:F

.field private final mHost:Lcom/wm65/launcher/DrawerPanel$Host;

.field private mLogo:Landroid/widget/ImageView;

.field private mRows:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApps(Lcom/wm65/launcher/DrawerPanel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHost(Lcom/wm65/launcher/DrawerPanel;)Lcom/wm65/launcher/DrawerPanel$Host;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/DrawerPanel;->mHost:Lcom/wm65/launcher/DrawerPanel$Host;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogo(Lcom/wm65/launcher/DrawerPanel;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApps(Lcom/wm65/launcher/DrawerPanel;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToHome(Lcom/wm65/launcher/DrawerPanel;Lcom/wm65/launcher/AppStore$AppInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/DrawerPanel;->addToHome(Lcom/wm65/launcher/AppStore$AppInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmove(Lcom/wm65/launcher/DrawerPanel;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wm65/launcher/DrawerPanel;->move(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowMenu(Lcom/wm65/launcher/DrawerPanel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/DrawerPanel;->showMenu(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msortByLetter(Lcom/wm65/launcher/DrawerPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/DrawerPanel;->sortByLetter()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/wm65/launcher/DrawerPanel$Host;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/wm65/launcher/DrawerPanel;->mHost:Lcom/wm65/launcher/DrawerPanel$Host;

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/wm65/launcher/DrawerPanel;->mCellW:I

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/wm65/launcher/DrawerPanel;->setOrientation(I)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/wm65/launcher/DrawerPanel;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-direct {p0}, Lcom/wm65/launcher/DrawerPanel;->build()V

    return-void
.end method

.method private addToHome(Lcom/wm65/launcher/AppStore$AppInfo;)V
    .locals 5

    .line 357
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v0, 0x7f030028

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->panelCount(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 363
    iget-object v3, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/wm65/launcher/AppStore;->panelApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 364
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    .line 365
    invoke-static {v4, v3}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/wm65/launcher/AppStore$AppInfo;->key()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/wm65/launcher/AppStore;->setPanelApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v0, 0x7f030002

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 369
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel;->mHost:Lcom/wm65/launcher/DrawerPanel$Host;

    if-eqz p1, :cond_3

    .line 370
    invoke-interface {p1}, Lcom/wm65/launcher/DrawerPanel$Host;->onPluginsChanged()V

    :cond_3
    return-void

    .line 375
    :cond_4
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v0, 0x7f030020

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private build()V
    .locals 6

    .line 60
    invoke-direct {p0}, Lcom/wm65/launcher/DrawerPanel;->buildBar()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/wm65/launcher/DrawerPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 66
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mRows:Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 68
    iget v4, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 69
    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mRows:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mRows:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/wm65/launcher/DrawerPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->orderedCached(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/wm65/launcher/DrawerPanel;->rebuild()V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030028

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, -0x4c000001

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 86
    iget v4, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mRows:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    new-instance v1, Lcom/wm65/launcher/DrawerPanel$1;

    invoke-direct {v1, p0}, Lcom/wm65/launcher/DrawerPanel$1;-><init>(Lcom/wm65/launcher/DrawerPanel;)V

    invoke-static {v0, v1}, Lcom/wm65/launcher/AppStore;->warmUp(Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private buildBar()Landroid/view/View;
    .locals 8

    .line 107
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    invoke-static {}, Lcom/wm65/launcher/Ui;->topBarBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 111
    iget v3, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 112
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v2, 0x42500000    # 52.0f

    .line 113
    iget v3, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 115
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p0}, Lcom/wm65/launcher/DrawerPanel;->applyCustomLogo()V

    const/high16 v2, 0x41d00000    # 26.0f

    .line 117
    iget v3, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 118
    iget-object v3, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 120
    iget-object v3, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    new-instance v4, Lcom/wm65/launcher/DrawerPanel$2;

    invoke-direct {v4, p0}, Lcom/wm65/launcher/DrawerPanel$2;-><init>(Lcom/wm65/launcher/DrawerPanel;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    iget-object v3, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f030018

    .line 147
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v3, -0x1

    .line 148
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 149
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x67000000

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x0

    .line 151
    invoke-virtual {v2, v6, v7, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 152
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41200000    # 10.0f

    .line 154
    iget v6, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 155
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    const-string v2, "\u2715"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41b00000    # 22.0f

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    invoke-static {v1}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    const/high16 v2, 0x42400000    # 48.0f

    .line 166
    iget v3, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 167
    new-instance v3, Lcom/wm65/launcher/DrawerPanel$3;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/DrawerPanel$3;-><init>(Lcom/wm65/launcher/DrawerPanel;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildCell(I)Landroid/view/View;
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wm65/launcher/AppStore$AppInfo;

    .line 228
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v3, 0x41100000    # 9.0f

    .line 231
    iget v4, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    .line 232
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 234
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 237
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v5, 0x38ffffff

    .line 238
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 239
    iget v5, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    float-to-int v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v6, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 240
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 242
    iget-object v5, v0, Lcom/wm65/launcher/AppStore$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 243
    iget-object v5, v0, Lcom/wm65/launcher/AppStore$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/high16 v5, 0x42200000    # 40.0f

    .line 245
    iget v6, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 246
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x42840000    # 66.0f

    .line 248
    iget v5, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 249
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 252
    iget-object v4, v0, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x150d01

    .line 253
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 254
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 256
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 257
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 259
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40c00000    # 6.0f

    .line 261
    iget v5, p0, Lcom/wm65/launcher/DrawerPanel;->mDens:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 262
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-static {v1}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 265
    new-instance v2, Lcom/wm65/launcher/DrawerPanel$4;

    invoke-direct {v2, p0, v0}, Lcom/wm65/launcher/DrawerPanel$4;-><init>(Lcom/wm65/launcher/DrawerPanel;Lcom/wm65/launcher/AppStore$AppInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-instance v0, Lcom/wm65/launcher/DrawerPanel$5;

    invoke-direct {v0, p0, p1}, Lcom/wm65/launcher/DrawerPanel$5;-><init>(Lcom/wm65/launcher/DrawerPanel;I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v1
.end method

.method private move(II)V
    .locals 1

    add-int/2addr p2, p1

    if-ltz p2, :cond_1

    .line 381
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 385
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    iget-object p2, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/wm65/launcher/AppStore;->saveOrder(Landroid/content/Context;Ljava/util/List;)V

    .line 386
    invoke-virtual {p0}, Lcom/wm65/launcher/DrawerPanel;->rebuild()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showMenu(I)V
    .locals 6

    .line 302
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wm65/launcher/AppStore$AppInfo;

    .line 303
    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    iget-object v2, v0, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v5, 0x7f030001

    .line 305
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v5, 0x7f03006a

    .line 306
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v5, 0x7f030034

    .line 307
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v5, 0x7f030033

    .line 308
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v5, 0x7f030006

    .line 309
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v5, 0x7f030031

    .line 310
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    new-instance v4, Lcom/wm65/launcher/DrawerPanel$6;

    invoke-direct {v4, p0, v0, p1}, Lcom/wm65/launcher/DrawerPanel$6;-><init>(Lcom/wm65/launcher/DrawerPanel;Lcom/wm65/launcher/AppStore$AppInfo;I)V

    .line 303
    invoke-static {v1, v2, v3, v4}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method private sortByLetter()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drawer_order"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 344
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->orderedCached(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    .line 345
    invoke-virtual {p0}, Lcom/wm65/launcher/DrawerPanel;->rebuild()V

    .line 346
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    const v1, 0x7f03006b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public applyCustomLogo()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "logo_drawer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 297
    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mLogo:Landroid/widget/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public rebuild()V
    .locals 12

    .line 199
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mRows:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 203
    filled-new-array {v1, v2, v0, v2}, [I

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 206
    :goto_0
    iget-object v5, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 207
    rem-int/lit8 v5, v4, 0x4

    aget v5, v0, v5

    .line 208
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v7, 0x1

    .line 210
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-ge v5, v1, :cond_1

    .line 212
    iget v7, p0, Lcom/wm65/launcher/DrawerPanel;->mCellW:I

    rsub-int/lit8 v8, v5, 0x5

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 213
    invoke-virtual {v6, v7, v2, v7, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    move v7, v2

    :goto_1
    const/4 v8, -0x2

    if-ge v7, v5, :cond_2

    .line 215
    iget-object v9, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 216
    invoke-direct {p0, v3}, Lcom/wm65/launcher/DrawerPanel;->buildCell(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, p0, Lcom/wm65/launcher/DrawerPanel;->mCellW:I

    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    :cond_2
    iget-object v5, p0, Lcom/wm65/launcher/DrawerPanel;->mRows:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public refreshApps()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->orderedCached(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iput-object v0, p0, Lcom/wm65/launcher/DrawerPanel;->mApps:Ljava/util/List;

    .line 186
    invoke-virtual {p0}, Lcom/wm65/launcher/DrawerPanel;->rebuild()V

    return-void
.end method
