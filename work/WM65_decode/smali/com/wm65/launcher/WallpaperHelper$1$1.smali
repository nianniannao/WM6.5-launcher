.class Lcom/wm65/launcher/WallpaperHelper$1$1;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/WallpaperHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/WallpaperHelper$1;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/WallpaperHelper$1;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/wm65/launcher/WallpaperHelper$1$1;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$1$1;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    iget-object v0, v0, Lcom/wm65/launcher/WallpaperHelper$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$1$1;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    iget-object v0, v0, Lcom/wm65/launcher/WallpaperHelper$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$1$1;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    iget-object v0, v0, Lcom/wm65/launcher/WallpaperHelper$1;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wm65/launcher/WallpaperHelper$1$1;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    iget-object v1, v1, Lcom/wm65/launcher/WallpaperHelper$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$1$1;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    iget-object v0, v0, Lcom/wm65/launcher/WallpaperHelper$1;->val$act:Landroid/app/Activity;

    const v1, 0x7f030077

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
