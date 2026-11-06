.class Lcom/wm65/launcher/DrawerPanel$1;
.super Ljava/lang/Object;
.source "DrawerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/DrawerPanel;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/DrawerPanel;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/DrawerPanel;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel$1;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$1;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$1;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$1;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/wm65/launcher/AppStore;->orderedCached(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fputmApps(Lcom/wm65/launcher/DrawerPanel;Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$1;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmApps(Lcom/wm65/launcher/DrawerPanel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$1;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-virtual {v0}, Lcom/wm65/launcher/DrawerPanel;->rebuild()V

    :cond_1
    :goto_0
    return-void
.end method
