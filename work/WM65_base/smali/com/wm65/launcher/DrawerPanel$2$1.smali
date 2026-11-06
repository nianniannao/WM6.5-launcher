.class Lcom/wm65/launcher/DrawerPanel$2$1;
.super Ljava/lang/Object;
.source "DrawerPanel.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/DrawerPanel$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wm65/launcher/DrawerPanel$2;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/DrawerPanel$2;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel$2$1;->this$1:Lcom/wm65/launcher/DrawerPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$2$1;->this$1:Lcom/wm65/launcher/DrawerPanel$2;

    iget-object p1, p1, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0x53

    invoke-static {p1, v0}, Lcom/wm65/launcher/Ui;->pickImage(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 134
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$2$1;->this$1:Lcom/wm65/launcher/DrawerPanel$2;

    iget-object p1, p1, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "logo_drawer"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$2$1;->this$1:Lcom/wm65/launcher/DrawerPanel$2;

    iget-object p1, p1, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmLogo(Lcom/wm65/launcher/DrawerPanel;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f020002

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$2$1;->this$1:Lcom/wm65/launcher/DrawerPanel$2;

    iget-object p1, p1, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
