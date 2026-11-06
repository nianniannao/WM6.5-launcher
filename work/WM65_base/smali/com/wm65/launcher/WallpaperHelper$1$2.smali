.class Lcom/wm65/launcher/WallpaperHelper$1$2;
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

    .line 119
    iput-object p1, p0, Lcom/wm65/launcher/WallpaperHelper$1$2;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/wm65/launcher/WallpaperHelper$1$2;->this$0:Lcom/wm65/launcher/WallpaperHelper$1;

    iget-object v0, v0, Lcom/wm65/launcher/WallpaperHelper$1;->val$act:Landroid/app/Activity;

    const v1, 0x7f030076

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
