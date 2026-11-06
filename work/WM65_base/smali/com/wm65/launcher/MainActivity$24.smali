.class Lcom/wm65/launcher/MainActivity$24;
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


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1379
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$24;->this$0:Lcom/wm65/launcher/MainActivity;

    iput-object p2, p0, Lcom/wm65/launcher/MainActivity$24;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1382
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$24;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1383
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$24;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/AppStore;->resetWidgetTransform(Landroid/content/Context;)V

    .line 1384
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$24;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;Z)V

    .line 1385
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$24;->this$0:Lcom/wm65/launcher/MainActivity;

    const v0, 0x7f03008b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1386
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
