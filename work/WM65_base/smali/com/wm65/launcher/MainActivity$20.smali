.class Lcom/wm65/launcher/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->addHintRow()V
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

    .line 1031
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$20;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1035
    :try_start_0
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$20;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {}, Lcom/wm65/launcher/NotifService;->settingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
