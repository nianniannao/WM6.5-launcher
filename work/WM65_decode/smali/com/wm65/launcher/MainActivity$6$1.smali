.class Lcom/wm65/launcher/MainActivity$6$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wm65/launcher/MainActivity$6;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity$6;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$6$1;->this$1:Lcom/wm65/launcher/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$6$1;->this$1:Lcom/wm65/launcher/MainActivity$6;

    iget-object v0, v0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$6$1;->this$1:Lcom/wm65/launcher/MainActivity$6;

    iget-object v0, v0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$6$1;->this$1:Lcom/wm65/launcher/MainActivity$6;

    iget-object v0, v0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;Z)V

    .line 253
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$6$1;->this$1:Lcom/wm65/launcher/MainActivity$6;

    iget-object v0, v0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmDrawerPanel(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/DrawerPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$6$1;->this$1:Lcom/wm65/launcher/MainActivity$6;

    iget-object v0, v0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmDrawerPanel(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/DrawerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wm65/launcher/DrawerPanel;->refreshApps()V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$6$1;->this$1:Lcom/wm65/launcher/MainActivity$6;

    iget-object v0, v0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshBadges(Lcom/wm65/launcher/MainActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
