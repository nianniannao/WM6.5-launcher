.class Lcom/wm65/launcher/QuoteHelper$1$1;
.super Ljava/lang/Object;
.source "QuoteHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/QuoteHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/QuoteHelper$1;

.field final synthetic val$q:Lcom/wm65/launcher/QuoteHelper$Quote;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/QuoteHelper$1;Lcom/wm65/launcher/QuoteHelper$Quote;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/wm65/launcher/QuoteHelper$1$1;->this$0:Lcom/wm65/launcher/QuoteHelper$1;

    iput-object p2, p0, Lcom/wm65/launcher/QuoteHelper$1$1;->val$q:Lcom/wm65/launcher/QuoteHelper$Quote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/wm65/launcher/QuoteHelper$1$1;->this$0:Lcom/wm65/launcher/QuoteHelper$1;

    iget-object v0, v0, Lcom/wm65/launcher/QuoteHelper$1;->val$cb:Lcom/wm65/launcher/QuoteHelper$Callback;

    iget-object v1, p0, Lcom/wm65/launcher/QuoteHelper$1$1;->val$q:Lcom/wm65/launcher/QuoteHelper$Quote;

    invoke-interface {v0, v1}, Lcom/wm65/launcher/QuoteHelper$Callback;->onUpdate(Lcom/wm65/launcher/QuoteHelper$Quote;)V

    return-void
.end method
