.class public Lcom/wm65/launcher/LockAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "LockAccessibilityService.java"


# static fields
.field private static volatile sInstance:Lcom/wm65/launcher/LockAccessibilityService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .line 49
    sget-object v0, Lcom/wm65/launcher/LockAccessibilityService;->sInstance:Lcom/wm65/launcher/LockAccessibilityService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lockScreen(Landroid/content/Context;)Z
    .locals 2

    .line 54
    sget-object v0, Lcom/wm65/launcher/LockAccessibilityService;->sInstance:Lcom/wm65/launcher/LockAccessibilityService;

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    .line 56
    invoke-virtual {v0, p0}, Lcom/wm65/launcher/LockAccessibilityService;->performGlobalAction(I)Z

    move-result p0

    return p0

    :cond_0
    const/high16 v0, 0x7f030000

    const/4 v1, 0x1

    .line 58
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/wm65/launcher/LockAccessibilityService;->sInstance:Lcom/wm65/launcher/LockAccessibilityService;

    .line 44
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method protected onServiceConnected()V
    .locals 0

    .line 22
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 23
    sput-object p0, Lcom/wm65/launcher/LockAccessibilityService;->sInstance:Lcom/wm65/launcher/LockAccessibilityService;

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/wm65/launcher/LockAccessibilityService;->sInstance:Lcom/wm65/launcher/LockAccessibilityService;

    .line 38
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
