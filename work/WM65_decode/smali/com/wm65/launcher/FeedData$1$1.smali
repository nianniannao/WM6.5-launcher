.class Lcom/wm65/launcher/FeedData$1$1;
.super Ljava/lang/Object;
.source "FeedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/FeedData$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/FeedData$1;

.field final synthetic val$f:Lcom/wm65/launcher/FeedData$Feed;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/FeedData$1;Lcom/wm65/launcher/FeedData$Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/wm65/launcher/FeedData$1$1;->this$0:Lcom/wm65/launcher/FeedData$1;

    iput-object p2, p0, Lcom/wm65/launcher/FeedData$1$1;->val$f:Lcom/wm65/launcher/FeedData$Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/wm65/launcher/FeedData$1$1;->this$0:Lcom/wm65/launcher/FeedData$1;

    iget-object v0, v0, Lcom/wm65/launcher/FeedData$1;->val$cb:Lcom/wm65/launcher/FeedData$Cb;

    iget-object v1, p0, Lcom/wm65/launcher/FeedData$1$1;->val$f:Lcom/wm65/launcher/FeedData$Feed;

    invoke-interface {v0, v1}, Lcom/wm65/launcher/FeedData$Cb;->onFeed(Lcom/wm65/launcher/FeedData$Feed;)V

    return-void
.end method
