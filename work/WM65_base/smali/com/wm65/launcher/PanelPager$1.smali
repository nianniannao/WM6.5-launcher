.class Lcom/wm65/launcher/PanelPager$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanelPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/PanelPager;-><init>(Landroid/content/Context;Lcom/wm65/launcher/PanelPager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/PanelPager;

.field final synthetic val$listener:Lcom/wm65/launcher/PanelPager$Listener;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/PanelPager;Lcom/wm65/launcher/PanelPager$Listener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/wm65/launcher/PanelPager$1;->this$0:Lcom/wm65/launcher/PanelPager;

    iput-object p2, p0, Lcom/wm65/launcher/PanelPager$1;->val$listener:Lcom/wm65/launcher/PanelPager$Listener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/wm65/launcher/PanelPager$1;->this$0:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {p1}, Lcom/wm65/launcher/PanelPager;->isBusy()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/wm65/launcher/PanelPager$1;->val$listener:Lcom/wm65/launcher/PanelPager$Listener;

    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/wm65/launcher/PanelPager$Listener;->onPageDoubleTap()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager$1;->this$0:Lcom/wm65/launcher/PanelPager;

    invoke-static {v0}, Lcom/wm65/launcher/PanelPager;->-$$Nest$fgetmDragging(Lcom/wm65/launcher/PanelPager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/PanelPager$1;->val$listener:Lcom/wm65/launcher/PanelPager$Listener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager$1;->this$0:Lcom/wm65/launcher/PanelPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wm65/launcher/PanelPager;->performHapticFeedback(I)Z

    .line 78
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager$1;->val$listener:Lcom/wm65/launcher/PanelPager$Listener;

    iget-object v1, p0, Lcom/wm65/launcher/PanelPager$1;->this$0:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v1}, Lcom/wm65/launcher/PanelPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/wm65/launcher/PanelPager$Listener;->onPageLongPress(IFF)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager$1;->this$0:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v0}, Lcom/wm65/launcher/PanelPager;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/PanelPager$1;->val$listener:Lcom/wm65/launcher/PanelPager$Listener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/wm65/launcher/PanelPager$1;->this$0:Lcom/wm65/launcher/PanelPager;

    invoke-virtual {v1}, Lcom/wm65/launcher/PanelPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/wm65/launcher/PanelPager$Listener;->onPageTap(IFF)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
