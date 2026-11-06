.class Lcom/wm65/launcher/MainActivity$PagerListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/PanelPager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;


# direct methods
.method private constructor <init>(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    .line 1597
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wm65/launcher/MainActivity;Lcom/wm65/launcher/MainActivity$PagerListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wm65/launcher/MainActivity$PagerListener;-><init>(Lcom/wm65/launcher/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onPageDoubleTap()V
    .locals 2

    .line 1631
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmPager(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/PanelPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wm65/launcher/PanelPager;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmLastTapDidAction(Lcom/wm65/launcher/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/LockAccessibilityService;->lockScreen(Landroid/content/Context;)Z

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmLastTapDidAction(Lcom/wm65/launcher/MainActivity;Z)V

    return-void
.end method

.method public onPageLongPress(IFF)V
    .locals 0

    if-nez p1, :cond_0

    .line 1616
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/WallpaperHelper;->pick(Landroid/app/Activity;)V

    return-void

    .line 1619
    :cond_0
    iget-object p2, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p2, p1, p3}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrowAt(Lcom/wm65/launcher/MainActivity;IF)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1621
    iget-object p2, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mshowPluginMenu(Lcom/wm65/launcher/MainActivity;I)V

    :cond_1
    return-void
.end method

.method public onPageTap(IFF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1603
    iget-object p2, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p2, p1, p3}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrowAt(Lcom/wm65/launcher/MainActivity;IF)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1605
    iget-object p3, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmLastTapDidAction(Lcom/wm65/launcher/MainActivity;Z)V

    .line 1606
    iget-object p3, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p3, p1, p2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrowView(Lcom/wm65/launcher/MainActivity;ILjava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    .line 1607
    invoke-static {p1}, Lcom/wm65/launcher/Ui;->pulse(Landroid/view/View;)V

    .line 1608
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$PagerListener;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mopenPlugin(Lcom/wm65/launcher/MainActivity;I)V

    :cond_0
    return-void
.end method
