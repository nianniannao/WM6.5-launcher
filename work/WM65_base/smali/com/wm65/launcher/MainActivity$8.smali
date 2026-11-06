.class Lcom/wm65/launcher/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->buildBottomBar()Landroid/view/View;
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

    .line 329
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$8;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 332
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$8;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mopenDrawer(Lcom/wm65/launcher/MainActivity;)V

    return-void
.end method
