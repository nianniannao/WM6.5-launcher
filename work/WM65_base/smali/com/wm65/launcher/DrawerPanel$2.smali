.class Lcom/wm65/launcher/DrawerPanel$2;
.super Ljava/lang/Object;
.source "DrawerPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/DrawerPanel;->buildBar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/DrawerPanel;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/DrawerPanel;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 123
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030030

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v2}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03002d

    .line 125
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v2}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03002f

    .line 126
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/wm65/launcher/DrawerPanel$2;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v2}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f030031

    .line 127
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/wm65/launcher/DrawerPanel$2$1;

    invoke-direct {v2, p0}, Lcom/wm65/launcher/DrawerPanel$2$1;-><init>(Lcom/wm65/launcher/DrawerPanel$2;)V

    .line 123
    invoke-static {p1, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return v3
.end method
