.class Lcom/wm65/launcher/SettingsActivity$1;
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

    .line 55
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$1;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 58
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$1;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f03008a

    .line 59
    invoke-virtual {p1, v0}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity$1;->this$0:Lcom/wm65/launcher/SettingsActivity;

    .line 60
    invoke-static {v1}, Lcom/wm65/launcher/AppStore;->panelCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wm65/launcher/SettingsActivity$1;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v3, 0x7f030059

    .line 61
    invoke-virtual {v2, v3}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wm65/launcher/SettingsActivity$1$1;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/SettingsActivity$1$1;-><init>(Lcom/wm65/launcher/SettingsActivity$1;)V

    .line 58
    invoke-static {p1, v0, v1, v2, v3}, Lcom/wm65/launcher/Ui;->inputDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$TextHandler;)V

    return-void
.end method
