.class Lcom/wm65/launcher/WallpaperHelper$2;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/WallpaperHelper;->syncSystemIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$onUpdated:Ljava/lang/Runnable;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$sp:Landroid/content/SharedPreferences;

    iput p3, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$id:I

    iput-object p4, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$onUpdated:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smreadSystemWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$app:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smadopt(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    .line 248
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sys_wallpaper_id"

    iget v2, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$id:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$onUpdated:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/wm65/launcher/WallpaperHelper$2;->val$onUpdated:Ljava/lang/Runnable;

    .line 251
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
