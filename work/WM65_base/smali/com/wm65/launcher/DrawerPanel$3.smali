.class Lcom/wm65/launcher/DrawerPanel$3;
.super Ljava/lang/Object;
.source "DrawerPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 167
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel$3;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$3;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmHost(Lcom/wm65/launcher/DrawerPanel;)Lcom/wm65/launcher/DrawerPanel$Host;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$3;->this$0:Lcom/wm65/launcher/DrawerPanel;

    invoke-static {p1}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$fgetmHost(Lcom/wm65/launcher/DrawerPanel;)Lcom/wm65/launcher/DrawerPanel$Host;

    move-result-object p1

    invoke-interface {p1}, Lcom/wm65/launcher/DrawerPanel$Host;->close()V

    :cond_0
    return-void
.end method
