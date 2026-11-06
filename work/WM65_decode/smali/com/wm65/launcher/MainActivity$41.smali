.class Lcom/wm65/launcher/MainActivity$41;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    .line 2585
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$41;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2588
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$41;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$41;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$41;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmDrawerPanel(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/DrawerPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$41;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmDrawerPanel(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/DrawerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wm65/launcher/DrawerPanel;->rebuild()V

    :cond_0
    return-void
.end method
