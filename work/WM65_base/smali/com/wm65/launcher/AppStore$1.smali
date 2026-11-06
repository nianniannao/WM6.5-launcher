.class Lcom/wm65/launcher/AppStore$1;
.super Ljava/lang/Object;
.source "AppStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/AppStore;->warmUp(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/wm65/launcher/AppStore$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/wm65/launcher/AppStore$1;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->loadApps(Landroid/content/Context;)Ljava/util/List;

    .line 106
    const-class v0, Lcom/wm65/launcher/AppStore;

    monitor-enter v0

    const/4 v1, 0x0

    .line 107
    :try_start_0
    invoke-static {v1}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfputsWarming(Z)V

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfgetsReadyCbs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    invoke-static {}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfgetsReadyCbs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/wm65/launcher/AppStore$1$1;

    invoke-direct {v2, p0, v1}, Lcom/wm65/launcher/AppStore$1$1;-><init>(Lcom/wm65/launcher/AppStore$1;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
