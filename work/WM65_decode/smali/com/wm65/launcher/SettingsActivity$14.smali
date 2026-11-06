.class Lcom/wm65/launcher/SettingsActivity$14;
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

    .line 320
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$14;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 323
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$14;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/AppStore;->resetAll(Landroid/content/Context;)V

    .line 324
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$14;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 326
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$14;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/SettingsActivity;->-$$Nest$mrefreshState(Lcom/wm65/launcher/SettingsActivity;)V

    return-void
.end method
