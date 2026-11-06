.class Lcom/wm65/launcher/MainActivity$31;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->animatePanel(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$target:F


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;F)V
    .locals 0

    .line 1755
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$31;->this$0:Lcom/wm65/launcher/MainActivity;

    iput p2, p0, Lcom/wm65/launcher/MainActivity$31;->val$target:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1758
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$31;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$31;->val$target:F

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$monPanelSettled(Lcom/wm65/launcher/MainActivity;F)V

    return-void
.end method
