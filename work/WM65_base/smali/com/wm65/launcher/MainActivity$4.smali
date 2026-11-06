.class Lcom/wm65/launcher/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 202
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$4;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$4;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$4;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$4;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmContainer(Lcom/wm65/launcher/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$4;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmContainer(Lcom/wm65/launcher/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-void
.end method
