.class Lcom/wm65/launcher/MainActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->registerPackageWatcher()V
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

    .line 233
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 240
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 241
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$6;->this$0:Lcom/wm65/launcher/MainActivity;

    new-instance p2, Lcom/wm65/launcher/MainActivity$6$1;

    invoke-direct {p2, p0}, Lcom/wm65/launcher/MainActivity$6$1;-><init>(Lcom/wm65/launcher/MainActivity$6;)V

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/wm65/launcher/AppStore;->refreshNewApps(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method
