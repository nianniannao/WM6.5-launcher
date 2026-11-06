.class Lcom/wm65/launcher/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/QuoteHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/MainActivity;
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

    .line 131
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$1;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/wm65/launcher/QuoteHelper$Quote;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$1;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$1;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$1;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0, p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshQuoteUi(Lcom/wm65/launcher/MainActivity;Lcom/wm65/launcher/QuoteHelper$Quote;)V

    :cond_0
    return-void
.end method
