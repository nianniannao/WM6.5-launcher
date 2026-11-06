.class Lcom/wm65/launcher/WallpaperHelper$3;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/WallpaperHelper;->listenForSystemChanges(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$onUpdated:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/wm65/launcher/WallpaperHelper$3;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/WallpaperHelper$3;->val$onUpdated:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/wm65/launcher/WallpaperHelper$3;->val$a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/wm65/launcher/WallpaperHelper$3;->val$onUpdated:Ljava/lang/Runnable;

    invoke-static {p1, p2}, Lcom/wm65/launcher/WallpaperHelper;->syncSystemIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
