.class Lcom/wm65/launcher/AppPickerActivity$2;
.super Landroid/widget/BaseAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/AppPickerActivity;->fillList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/AppPickerActivity;

.field final synthetic val$apps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/AppPickerActivity;Ljava/util/List;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    iput-object p2, p0, Lcom/wm65/launcher/AppPickerActivity$2;->val$apps:Ljava/util/List;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/wm65/launcher/AppPickerActivity$2;->val$apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/wm65/launcher/AppPickerActivity$2;->val$apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 101
    check-cast p2, Landroid/widget/LinearLayout;

    const p3, 0x1020014

    const v0, 0x1020006

    if-nez p2, :cond_0

    .line 103
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 105
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 106
    iget-object v2, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-virtual {v2}, Lcom/wm65/launcher/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 107
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 108
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 110
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    .line 111
    invoke-virtual {v4}, Lcom/wm65/launcher/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42300000    # 44.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v6, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    .line 112
    invoke-virtual {v6}, Lcom/wm65/launcher/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setId(I)V

    const v3, -0x150d01

    .line 115
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 119
    iget-object v1, p0, Lcom/wm65/launcher/AppPickerActivity$2;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-virtual {v1}, Lcom/wm65/launcher/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 120
    invoke-virtual {p2, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/wm65/launcher/AppPickerActivity$2;->val$apps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wm65/launcher/AppStore$AppInfo;

    .line 123
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/wm65/launcher/AppStore$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
