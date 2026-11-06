.class Lcom/wm65/launcher/AppStore$3;
.super Ljava/lang/Object;
.source "AppStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/AppStore;->refreshNewApps(Landroid/content/Context;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$onChange:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcom/wm65/launcher/AppStore$3;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/wm65/launcher/AppStore$3;->val$onChange:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/wm65/launcher/AppStore$3;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->-$$Nest$smscanApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 563
    const-class v1, Lcom/wm65/launcher/AppStore;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 564
    :try_start_1
    invoke-static {}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfgetsCache()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 565
    monitor-exit v1

    return-void

    .line 567
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfgetsCache()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 569
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 570
    invoke-static {}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfgetsCache()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wm65/launcher/AppStore$AppInfo;

    .line 571
    iget-object v6, v6, Lcom/wm65/launcher/AppStore$AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 573
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wm65/launcher/AppStore$AppInfo;

    .line 574
    iget-object v6, v6, Lcom/wm65/launcher/AppStore$AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-eqz v4, :cond_5

    .line 581
    invoke-static {v0}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfputsCache(Ljava/util/List;)V

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfputsCacheTime(J)V

    .line 584
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_6

    .line 585
    :try_start_2
    iget-object v0, p0, Lcom/wm65/launcher/AppStore$3;->val$onChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 586
    invoke-static {}, Lcom/wm65/launcher/AppStore;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wm65/launcher/AppStore$3;->val$onChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 584
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_6
    :goto_3
    return-void
.end method
