.class public Lcom/wm65/launcher/AppPickerActivity;
.super Landroid/app/Activity;
.source "AppPickerActivity.java"


# instance fields
.field private mPad:I

.field private mRoot:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$mfillList(Lcom/wm65/launcher/AppPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wm65/launcher/AppPickerActivity;->fillList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private fillList()V
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/wm65/launcher/AppPickerActivity;->mRoot:Landroid/widget/LinearLayout;

    .line 72
    iget v1, p0, Lcom/wm65/launcher/AppPickerActivity;->mPad:I

    .line 74
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/wm65/launcher/AppStore;->cachedApps()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 81
    :cond_1
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 82
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 83
    new-instance v4, Lcom/wm65/launcher/AppPickerActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/wm65/launcher/AppPickerActivity$2;-><init>(Lcom/wm65/launcher/AppPickerActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    new-instance v4, Lcom/wm65/launcher/AppPickerActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/wm65/launcher/AppPickerActivity$3;-><init>(Lcom/wm65/launcher/AppPickerActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    invoke-direct {v2, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 141
    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 142
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/wm65/launcher/AppPickerActivity;->mRoot:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030057

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 34
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x67000000

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    .line 36
    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 37
    invoke-virtual {p0}, Lcom/wm65/launcher/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/wm65/launcher/AppPickerActivity;->mPad:I

    .line 38
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    iget-object v1, p0, Lcom/wm65/launcher/AppPickerActivity;->mRoot:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object p1, p0, Lcom/wm65/launcher/AppPickerActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/wm65/launcher/AppPickerActivity;->setContentView(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/wm65/launcher/AppPickerActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/wm65/launcher/AppPickerActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->edgePad(Landroid/app/Activity;Landroid/view/View;)V

    .line 47
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/wm65/launcher/AppPickerActivity;->fillList()V

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030028

    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, -0x4c000001

    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget v1, p0, Lcom/wm65/launcher/AppPickerActivity;->mPad:I

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    iget-object v1, p0, Lcom/wm65/launcher/AppPickerActivity;->mRoot:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance p1, Lcom/wm65/launcher/AppPickerActivity$1;

    invoke-direct {p1, p0}, Lcom/wm65/launcher/AppPickerActivity$1;-><init>(Lcom/wm65/launcher/AppPickerActivity;)V

    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->warmUp(Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
