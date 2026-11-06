.class Lcom/wm65/launcher/MainActivity$32;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->configTapTarget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$clock:Z


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2098
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    iput-boolean p2, p0, Lcom/wm65/launcher/MainActivity$32;->val$clock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 3

    if-nez p1, :cond_1

    .line 2102
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    const-class v2, Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2104
    iget-boolean v1, p0, Lcom/wm65/launcher/MainActivity$32;->val$clock:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x51

    .line 2102
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/wm65/launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2105
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2107
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mmoveWidget(Lcom/wm65/launcher/MainActivity;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2109
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mscaleWidgetDialog(Lcom/wm65/launcher/MainActivity;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2111
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mcenterWidgets(Lcom/wm65/launcher/MainActivity;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 2113
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    iget-boolean v0, p0, Lcom/wm65/launcher/MainActivity$32;->val$clock:Z

    invoke-static {p1, v0}, Lcom/wm65/launcher/AppStore;->resetTapTarget(Landroid/content/Context;Z)V

    .line 2114
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$32;->this$0:Lcom/wm65/launcher/MainActivity;

    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 2115
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void
.end method
