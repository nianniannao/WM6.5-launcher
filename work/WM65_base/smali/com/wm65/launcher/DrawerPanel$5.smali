.class Lcom/wm65/launcher/DrawerPanel$5;
.super Ljava/lang/Object;
.source "DrawerPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/wm65/launcher/DrawerPanel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/wm65/launcher/DrawerPanel$5;->this$0:Lcom/wm65/launcher/DrawerPanel;

    iput p2, p0, Lcom/wm65/launcher/DrawerPanel$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 274
    iget-object p1, p0, Lcom/wm65/launcher/DrawerPanel$5;->this$0:Lcom/wm65/launcher/DrawerPanel;

    iget v0, p0, Lcom/wm65/launcher/DrawerPanel$5;->val$index:I

    invoke-static {p1, v0}, Lcom/wm65/launcher/DrawerPanel;->-$$Nest$mshowMenu(Lcom/wm65/launcher/DrawerPanel;I)V

    const/4 p1, 0x1

    return p1
.end method
