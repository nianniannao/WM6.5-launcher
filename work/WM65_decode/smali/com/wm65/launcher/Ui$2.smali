.class Lcom/wm65/launcher/Ui$2;
.super Ljava/lang/Object;
.source "Ui.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/Ui;->edgePad(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bb:I

.field final synthetic val$bl:I

.field final synthetic val$br:I

.field final synthetic val$bt:I

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/wm65/launcher/Ui$2;->val$root:Landroid/view/View;

    iput p2, p0, Lcom/wm65/launcher/Ui$2;->val$bl:I

    iput p3, p0, Lcom/wm65/launcher/Ui$2;->val$bt:I

    iput p4, p0, Lcom/wm65/launcher/Ui$2;->val$br:I

    iput p5, p0, Lcom/wm65/launcher/Ui$2;->val$bb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 115
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    .line 116
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 117
    iget p2, p1, Landroid/graphics/Insets;->top:I

    .line 118
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    .line 121
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    move v4, p2

    move p2, p1

    move p1, v4

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/wm65/launcher/Ui$2;->val$root:Landroid/view/View;

    iget v1, p0, Lcom/wm65/launcher/Ui$2;->val$bl:I

    iget v2, p0, Lcom/wm65/launcher/Ui$2;->val$bt:I

    add-int/2addr v2, p2

    iget p2, p0, Lcom/wm65/launcher/Ui$2;->val$br:I

    iget v3, p0, Lcom/wm65/launcher/Ui$2;->val$bb:I

    add-int/2addr v3, p1

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method
