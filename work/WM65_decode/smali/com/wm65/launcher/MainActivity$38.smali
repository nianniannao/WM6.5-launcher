.class Lcom/wm65/launcher/MainActivity$38;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->rowSizeDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$height:Z

.field final synthetic val$idx:I

.field final synthetic val$min:F

.field final synthetic val$sb:Landroid/widget/SeekBar;

.field final synthetic val$step:F


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;ZIFLandroid/widget/SeekBar;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2371
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$38;->this$0:Lcom/wm65/launcher/MainActivity;

    iput-object p2, p0, Lcom/wm65/launcher/MainActivity$38;->val$d:Landroid/app/Dialog;

    iput-boolean p3, p0, Lcom/wm65/launcher/MainActivity$38;->val$height:Z

    iput p4, p0, Lcom/wm65/launcher/MainActivity$38;->val$idx:I

    iput p5, p0, Lcom/wm65/launcher/MainActivity$38;->val$min:F

    iput-object p6, p0, Lcom/wm65/launcher/MainActivity$38;->val$sb:Landroid/widget/SeekBar;

    iput p7, p0, Lcom/wm65/launcher/MainActivity$38;->val$step:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 2374
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$38;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2375
    iget-boolean p1, p0, Lcom/wm65/launcher/MainActivity$38;->val$height:Z

    if-eqz p1, :cond_0

    .line 2376
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$38;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$38;->val$idx:I

    iget v1, p0, Lcom/wm65/launcher/MainActivity$38;->val$min:F

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity$38;->val$sb:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/wm65/launcher/MainActivity$38;->val$step:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/wm65/launcher/AppStore;->setRowWeight(Landroid/content/Context;IF)V

    goto :goto_0

    .line 2378
    :cond_0
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$38;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$38;->val$idx:I

    iget v1, p0, Lcom/wm65/launcher/MainActivity$38;->val$min:F

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity$38;->val$sb:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/wm65/launcher/MainActivity$38;->val$step:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/wm65/launcher/AppStore;->setRowWidth(Landroid/content/Context;IF)V

    .line 2380
    :goto_0
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$38;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;Z)V

    return-void
.end method
