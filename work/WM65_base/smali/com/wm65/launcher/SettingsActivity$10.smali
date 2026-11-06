.class Lcom/wm65/launcher/SettingsActivity$10;
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

    .line 238
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$10;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 241
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$10;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f03000c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 243
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$10;->this$0:Lcom/wm65/launcher/SettingsActivity;

    new-instance v0, Lcom/wm65/launcher/SettingsActivity$10$1;

    invoke-direct {v0, p0}, Lcom/wm65/launcher/SettingsActivity$10$1;-><init>(Lcom/wm65/launcher/SettingsActivity$10;)V

    invoke-static {p1, v0}, Lcom/wm65/launcher/WallpaperHelper;->applyBingDaily(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
