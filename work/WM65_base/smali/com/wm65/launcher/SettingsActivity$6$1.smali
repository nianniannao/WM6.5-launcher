.class Lcom/wm65/launcher/SettingsActivity$6$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wm65/launcher/SettingsActivity$6;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity$6;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6$1;->this$1:Lcom/wm65/launcher/SettingsActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6$1;->this$1:Lcom/wm65/launcher/SettingsActivity$6;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/SettingsActivity;->-$$Nest$mwidgetScaleDialog(Lcom/wm65/launcher/SettingsActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 157
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6$1;->this$1:Lcom/wm65/launcher/SettingsActivity$6;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/wm65/launcher/AppStore;->setWidgetOffset(Landroid/content/Context;FF)V

    .line 159
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6$1;->this$1:Lcom/wm65/launcher/SettingsActivity$6;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f030084

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 163
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6$1;->this$1:Lcom/wm65/launcher/SettingsActivity$6;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {p1}, Lcom/wm65/launcher/AppStore;->resetWidgetTransform(Landroid/content/Context;)V

    .line 164
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6$1;->this$1:Lcom/wm65/launcher/SettingsActivity$6;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f03008b

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method
