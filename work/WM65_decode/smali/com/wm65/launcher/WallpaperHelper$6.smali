.class Lcom/wm65/launcher/WallpaperHelper$6;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/WallpaperHelper;->applyBingDaily(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$onFailed:Ljava/lang/Runnable;

.field final synthetic val$onUpdated:Ljava/lang/Runnable;

.field final synthetic val$successDay:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$onFailed:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$successDay:Ljava/lang/String;

    iput-object p4, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$onUpdated:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 406
    iget-object v1, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 407
    invoke-static {}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smbingUrlOfToday()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 410
    invoke-static {v2, v0, v1}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smtryDownload(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    .line 411
    const-string v5, "_1920x1080.jpg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xf

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_1366x768.jpg"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-static {v4, v0, v1}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smtryDownload(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_2

    .line 419
    const-string v5, "_\\d+x\\d+\\.jpg$"

    const-string v6, ".jpg"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    invoke-static {v5, v0, v1}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smtryDownload(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    if-nez v4, :cond_4

    .line 427
    const-string v2, "https://bing.img.run/1920x1080.php"

    const-string v5, "https://api.dujin.org/bing/1920.php"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    move v5, v3

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    .line 431
    aget-object v4, v2, v5

    .line 432
    invoke-static {v4, v0, v1}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smtryDownload(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 439
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$onFailed:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smpost(Ljava/lang/Runnable;)V

    return-void

    .line 442
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$app:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v4, v0, v2}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smadopt(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;Z)V

    .line 446
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$successDay:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 447
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$app:Landroid/content/Context;

    const-string v1, "wm65_wallpaper"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bing_daily_date"

    iget-object v2, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$successDay:Ljava/lang/String;

    .line 448
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    :cond_6
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$onUpdated:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smpost(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 452
    :catchall_0
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$6;->val$onFailed:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/wm65/launcher/WallpaperHelper;->-$$Nest$smpost(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
