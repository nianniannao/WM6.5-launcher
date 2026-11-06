.class Lcom/wm65/launcher/SettingsActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$TextHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wm65/launcher/SettingsActivity$1;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity$1;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$1$1;->this$1:Lcom/wm65/launcher/SettingsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .locals 2

    .line 66
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 67
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity$1$1;->this$1:Lcom/wm65/launcher/SettingsActivity$1;

    iget-object v0, v0, Lcom/wm65/launcher/SettingsActivity$1;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {v0, p1}, Lcom/wm65/launcher/AppStore;->setPanelCount(Landroid/content/Context;I)V

    .line 68
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$1$1;->this$1:Lcom/wm65/launcher/SettingsActivity$1;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$1;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/SettingsActivity;->-$$Nest$mrefreshState(Lcom/wm65/launcher/SettingsActivity;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$1$1;->this$1:Lcom/wm65/launcher/SettingsActivity$1;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$1;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f030059

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
