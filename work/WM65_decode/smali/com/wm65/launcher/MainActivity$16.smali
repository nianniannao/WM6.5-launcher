.class Lcom/wm65/launcher/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->buildTodayPage()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$16;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 818
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$16;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mopenTapTarget(Lcom/wm65/launcher/MainActivity;Z)V

    return-void
.end method
