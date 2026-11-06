.class Lcom/wm65/launcher/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$9;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 220
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$9;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/WallpaperHelper;->bingEnabled(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 221
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity$9;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {v0, p1}, Lcom/wm65/launcher/WallpaperHelper;->setBingEnabled(Landroid/app/Activity;Z)V

    .line 222
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity$9;->this$0:Lcom/wm65/launcher/SettingsActivity;

    if-eqz p1, :cond_0

    const v1, 0x7f03000a

    goto :goto_0

    :cond_0
    const v1, 0x7f030009

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity$9;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {v0}, Lcom/wm65/launcher/SettingsActivity;->-$$Nest$mrefreshState(Lcom/wm65/launcher/SettingsActivity;)V

    if-eqz p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$9;->this$0:Lcom/wm65/launcher/SettingsActivity;

    new-instance v0, Lcom/wm65/launcher/SettingsActivity$9$1;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/SettingsActivity$9$1;-><init>(Lcom/wm65/launcher/SettingsActivity$9;)V

    invoke-static {p1, v0}, Lcom/wm65/launcher/WallpaperHelper;->applyBingDaily(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
