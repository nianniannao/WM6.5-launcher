.class Lcom/wm65/launcher/MainActivity$45;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


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

    .line 2632
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$45;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 2636
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$45;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p1}, Lcom/wm65/launcher/MainActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$45;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p1}, Lcom/wm65/launcher/MainActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2637
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$45;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshMusic(Lcom/wm65/launcher/MainActivity;)V

    :cond_0
    return-void
.end method
