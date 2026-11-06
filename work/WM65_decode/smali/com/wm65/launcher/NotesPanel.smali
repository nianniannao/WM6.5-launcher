.class public Lcom/wm65/launcher/NotesPanel;
.super Landroid/widget/LinearLayout;
.source "NotesPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/NotesPanel$Host;
    }
.end annotation


# instance fields
.field private final mAct:Landroid/app/Activity;

.field private final mBoardHost:Lcom/wm65/launcher/NotesBoard$Host;

.field private final mDens:F

.field private final mHost:Lcom/wm65/launcher/NotesPanel$Host;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHost(Lcom/wm65/launcher/NotesPanel;)Lcom/wm65/launcher/NotesPanel$Host;
    .locals 0

    iget-object p0, p0, Lcom/wm65/launcher/NotesPanel;->mHost:Lcom/wm65/launcher/NotesPanel$Host;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/wm65/launcher/NotesPanel$Host;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/wm65/launcher/NotesPanel$1;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/NotesPanel$1;-><init>(Lcom/wm65/launcher/NotesPanel;)V

    iput-object v0, p0, Lcom/wm65/launcher/NotesPanel;->mBoardHost:Lcom/wm65/launcher/NotesBoard$Host;

    .line 36
    iput-object p1, p0, Lcom/wm65/launcher/NotesPanel;->mAct:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/wm65/launcher/NotesPanel;->mHost:Lcom/wm65/launcher/NotesPanel$Host;

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/wm65/launcher/NotesPanel;->mDens:F

    const/4 p2, 0x1

    .line 39
    invoke-virtual {p0, p2}, Lcom/wm65/launcher/NotesPanel;->setOrientation(I)V

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p2}, Lcom/wm65/launcher/NotesPanel;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 42
    invoke-virtual {p0, p2, v0, p2, p1}, Lcom/wm65/launcher/NotesPanel;->setPadding(IIII)V

    .line 43
    invoke-direct {p0}, Lcom/wm65/launcher/NotesPanel;->buildBar()Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/wm65/launcher/NotesPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0}, Lcom/wm65/launcher/NotesPanel;->rebuild()V

    return-void
.end method

.method private buildBar()Landroid/view/View;
    .locals 10

    .line 51
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wm65/launcher/NotesPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wm65/launcher/NotesPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f03003c

    .line 56
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, -0x33000001    # -1.3421772E8f

    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 58
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x67000000

    .line 60
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 61
    invoke-static {v2}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 62
    new-instance v7, Lcom/wm65/launcher/NotesPanel$2;

    invoke-direct {v7, p0}, Lcom/wm65/launcher/NotesPanel$2;-><init>(Lcom/wm65/launcher/NotesPanel;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/wm65/launcher/NotesPanel;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v2, Landroid/view/View;

    iget-object v7, p0, Lcom/wm65/launcher/NotesPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v2, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/wm65/launcher/NotesPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f03003d

    .line 75
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const/4 v7, -0x1

    .line 76
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41900000    # 18.0f

    .line 77
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 80
    invoke-direct {p0}, Lcom/wm65/launcher/NotesPanel;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/wm65/launcher/NotesPanel;->mAct:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private wrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public rebuild()V
    .locals 5

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/wm65/launcher/NotesPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/wm65/launcher/NotesPanel;->removeViewAt(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/NotesPanel;->mAct:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wm65/launcher/NotesPanel;->mBoardHost:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-static {v0, v1}, Lcom/wm65/launcher/NotesBoard;->build(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/wm65/launcher/NotesPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
