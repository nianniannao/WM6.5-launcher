.class Lcom/wm65/launcher/Ui$1;
.super Ljava/lang/Object;
.source "Ui.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/Ui;->edgeBars(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Lcom/wm65/launcher/Ui$InsetsSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bottomBar:Landroid/view/View;

.field final synthetic val$sink:Lcom/wm65/launcher/Ui$InsetsSink;

.field final synthetic val$topBar:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/wm65/launcher/Ui$InsetsSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/wm65/launcher/Ui$1;->val$topBar:Landroid/view/View;

    iput-object p2, p0, Lcom/wm65/launcher/Ui$1;->val$bottomBar:Landroid/view/View;

    iput-object p3, p0, Lcom/wm65/launcher/Ui$1;->val$sink:Lcom/wm65/launcher/Ui$InsetsSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 71
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 73
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    .line 74
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 75
    iget p2, p1, Landroid/graphics/Insets;->top:I

    .line 76
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    .line 79
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    move v4, p2

    move p2, p1

    move p1, v4

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/wm65/launcher/Ui$1;->val$topBar:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/wm65/launcher/Ui$1;->val$topBar:Landroid/view/View;

    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 82
    invoke-virtual {v0, v2, p2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/wm65/launcher/Ui$1;->val$bottomBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/wm65/launcher/Ui$1;->val$bottomBar:Landroid/view/View;

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 86
    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/wm65/launcher/Ui$1;->val$sink:Lcom/wm65/launcher/Ui$InsetsSink;

    if-eqz v0, :cond_3

    .line 90
    invoke-interface {v0, p2, p1}, Lcom/wm65/launcher/Ui$InsetsSink;->onInsets(II)V

    .line 92
    :cond_3
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method
