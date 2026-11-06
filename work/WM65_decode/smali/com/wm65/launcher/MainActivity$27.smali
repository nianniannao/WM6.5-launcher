.class Lcom/wm65/launcher/MainActivity$27;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/FeedData$Cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->refreshMusic()V
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

    .line 1438
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeed(Lcom/wm65/launcher/FeedData$Feed;)V
    .locals 3

    .line 1441
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmMusicText(Lcom/wm65/launcher/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/MainActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1444
    :cond_0
    iget-boolean v0, p1, Lcom/wm65/launcher/FeedData$Feed;->playing:Z

    if-eqz v0, :cond_2

    .line 1445
    iget-object v0, p1, Lcom/wm65/launcher/FeedData$Feed;->playTitle:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u266a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1446
    iget-object v1, p1, Lcom/wm65/launcher/FeedData$Feed;->playArtist:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/wm65/launcher/FeedData$Feed;->playArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1447
    iget-object v1, p1, Lcom/wm65/launcher/FeedData$Feed;->playArtist:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    :cond_1
    iget-object v1, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmMusicText(Lcom/wm65/launcher/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    iget-object p1, p1, Lcom/wm65/launcher/FeedData$Feed;->playPkg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmMusicPkg(Lcom/wm65/launcher/MainActivity;Ljava/lang/String;)V

    .line 1451
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmMusicBox(Lcom/wm65/launcher/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1453
    :cond_2
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmMusicBox(Lcom/wm65/launcher/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1454
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$27;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmMusicPkg(Lcom/wm65/launcher/MainActivity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
