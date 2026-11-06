.class Lcom/wm65/launcher/DrawerPanel$6;
.super Ljava/lang/Object;
.source "DrawerPanel.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/DrawerPanel;->showMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/DrawerPanel;

.field final synthetic val$app:Lcom/wm65/launcher/AppStore$AppInfo;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wm65/launcher/DrawerPanel;Lcom/wm65/launcher/AppStore$AppInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel$6;->this$0:Lcom/wm65/launcher/DrawerPanel;

    iput-object p2, p0, Lcom/wm65/launcher/DrawerPanel$6;->val$app:Lcom/wm65/launcher/AppStore$AppInfo;

    iput p3, p0, Lcom/wm65/launcher/DrawerPanel$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$6;->val$app:Lcom/wm65/launcher/AppStore$AppInfo;

    iget-object v0, v0, Lcom/wm65/launcher/AppStore$AppInfo;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 330
    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$6;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_0

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$6;->this$0:Lcom/wm65/launcher/DrawerPanel;

    iget v1, p0, Lcom/wm65/launcher/DrawerPanel$6;->val$index:I

    invoke-static {p1, v1, v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$mmove(Lcom/wm65/launcher/DrawerPanel;II)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$6;->this$0:Lcom/wm65/launcher/DrawerPanel;

    iget v0, p0, Lcom/wm65/launcher/DrawerPanel$6;->val$index:I

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$mmove(Lcom/wm65/launcher/DrawerPanel;II)V

    goto :goto_0

    .line 319
    :cond_3
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$6;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$msortByLetter(Lcom/wm65/launcher/DrawerPanel;)V

    goto :goto_0

    .line 316
    :cond_4
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$6;->this$0:Lcom/wm65/launcher/DrawerPanel;

    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$6;->val$app:Lcom/wm65/launcher/AppStore$AppInfo;

    invoke-static {p1, v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$maddToHome(Lcom/wm65/launcher/DrawerPanel;Lcom/wm65/launcher/AppStore$AppInfo;)V

    :goto_0
    return-void
.end method
