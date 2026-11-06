.class Lcom/wm65/launcher/MainActivity$35;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->showPluginMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2257
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$35;->this$0:Lcom/wm65/launcher/MainActivity;

    iput p2, p0, Lcom/wm65/launcher/MainActivity$35;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 2261
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$35;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$35;->val$idx:I

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mopenPicker(Lcom/wm65/launcher/MainActivity;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2263
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$35;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v1, p0, Lcom/wm65/launcher/MainActivity$35;->val$idx:I

    invoke-static {p1, v1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrowSizeDialog(Lcom/wm65/launcher/MainActivity;IZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2265
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$35;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$35;->val$idx:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrowSizeDialog(Lcom/wm65/launcher/MainActivity;IZ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 2267
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$35;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v1, p0, Lcom/wm65/launcher/MainActivity$35;->val$idx:I

    invoke-static {p1, v1}, Lcom/wm65/launcher/AppStore;->resetRowSize(Landroid/content/Context;I)V

    .line 2268
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$35;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;Z)V

    :cond_3
    :goto_0
    return-void
.end method
