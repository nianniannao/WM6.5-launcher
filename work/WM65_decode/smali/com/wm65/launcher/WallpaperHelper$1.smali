.class Lcom/wm65/launcher/WallpaperHelper$1;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/WallpaperHelper;->handleResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/wm65/launcher/WallpaperHelper$1;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/wm65/launcher/WallpaperHelper$1;->val$bmp:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/wm65/launcher/WallpaperHelper$1;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wm65/launcher/WallpaperHelper$1;->val$app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/wm65/launcher/WallpaperHelper$1;->val$app:Landroid/content/Context;

    iget-object v2, p0, Lcom/wm65/launcher/WallpaperHelper$1;->val$bmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smadopt(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wm65/launcher/WallpaperHelper$1$1;

    invoke-direct {v1, p0}, Lcom/wm65/launcher/WallpaperHelper$1$1;-><init>(Lcom/wm65/launcher/WallpaperHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wm65/launcher/WallpaperHelper$1$2;

    invoke-direct {v1, p0}, Lcom/wm65/launcher/WallpaperHelper$1$2;-><init>(Lcom/wm65/launcher/WallpaperHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
