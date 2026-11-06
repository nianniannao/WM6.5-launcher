.class Lcom/wm65/launcher/DrawerPanel$4;
.super Ljava/lang/Object;
.source "DrawerPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/DrawerPanel;->buildCell(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/DrawerPanel;

.field final synthetic val$app:Lcom/wm65/launcher/AppStore$AppInfo;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/DrawerPanel;Lcom/wm65/launcher/AppStore$AppInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel$4;->this$0:Lcom/wm65/launcher/DrawerPanel;

    iput-object p2, p0, Lcom/wm65/launcher/DrawerPanel$4;->val$app:Lcom/wm65/launcher/AppStore$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$4;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/wm65/launcher/DrawerPanel$4;->val$app:Lcom/wm65/launcher/AppStore$AppInfo;

    iget-object v1, p0, Lcom/wm65/launcher/DrawerPanel$4;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {v1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmAct(Lcom/wm65/launcher/DrawerPanel;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wm65/launcher/AppStore$AppInfo;->launchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    return-void
.end method
