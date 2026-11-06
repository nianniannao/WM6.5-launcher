.class Lcom/wm65/launcher/MainActivity$26;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->scaleWidgetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$sb:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1407
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$26;->this$0:Lcom/wm65/launcher/MainActivity;

    iput-object p2, p0, Lcom/wm65/launcher/MainActivity$26;->val$d:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/wm65/launcher/MainActivity$26;->val$sb:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1410
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$26;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1411
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$26;->this$0:Lcom/wm65/launcher/MainActivity;

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$26;->val$sb:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/wm65/launcher/AppStore;->setWidgetScale(Landroid/content/Context;F)V

    .line 1412
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$26;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;Z)V

    return-void
.end method
