.class Lcom/wm65/launcher/FeedData$1;
.super Ljava/lang/Object;
.source "FeedData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/FeedData;->fetch(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$cb:Lcom/wm65/launcher/FeedData$Cb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Cb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/wm65/launcher/FeedData$1;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/wm65/launcher/FeedData$1;->val$cb:Lcom/wm65/launcher/FeedData$Cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 44
    new-instance v0, Lcom/wm65/launcher/FeedData$Feed;

    invoke-direct {v0}, Lcom/wm65/launcher/FeedData$Feed;-><init>()V

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/wm65/launcher/FeedData$1;->val$app:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/wm65/launcher/FeedData;->-$$Nest$smfillPlaying(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Feed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    invoke-static {}, Lcom/wm65/launcher/FeedData;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wm65/launcher/FeedData$1$1;

    invoke-direct {v2, p0, v0}, Lcom/wm65/launcher/FeedData$1$1;-><init>(Lcom/wm65/launcher/FeedData$1;Lcom/wm65/launcher/FeedData$Feed;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
