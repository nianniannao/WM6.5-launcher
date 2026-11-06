.class Lcom/wm65/launcher/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->preCreatePanels()V
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

    .line 279
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$7;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$7;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mensurePanel(Lcom/wm65/launcher/MainActivity;I)V

    .line 283
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$7;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mensurePanel(Lcom/wm65/launcher/MainActivity;I)V

    const/4 v0, 0x0

    return v0
.end method
