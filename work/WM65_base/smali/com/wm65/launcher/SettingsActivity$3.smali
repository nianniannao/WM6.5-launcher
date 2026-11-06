.class Lcom/wm65/launcher/SettingsActivity$3;
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

    .line 91
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$3;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$3;->this$0:Lcom/wm65/launcher/SettingsActivity;

    .line 95
    invoke-static {p1}, Lcom/wm65/launcher/AppStore;->panelCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 94
    invoke-static {p1, v0}, Lcom/wm65/launcher/AppStore;->setPanelCount(Landroid/content/Context;I)V

    .line 96
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$3;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/SettingsActivity;->-$$Nest$mrefreshState(Lcom/wm65/launcher/SettingsActivity;)V

    return-void
.end method
