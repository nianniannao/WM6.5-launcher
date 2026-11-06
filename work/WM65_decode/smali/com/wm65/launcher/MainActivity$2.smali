.class Lcom/wm65/launcher/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 143
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$2;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$2;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshClocks(Lcom/wm65/launcher/MainActivity;)V

    .line 147
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$2;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshMusic(Lcom/wm65/launcher/MainActivity;)V

    .line 148
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$2;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshMessages(Lcom/wm65/launcher/MainActivity;)V

    .line 149
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$2;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshBadges(Lcom/wm65/launcher/MainActivity;)V

    .line 151
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$2;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmQuoteCb(Lcom/wm65/launcher/MainActivity;)Lcom/wm65/launcher/QuoteHelper$Callback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wm65/launcher/QuoteHelper;->refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/QuoteHelper$Callback;)V

    .line 152
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$2;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmHandler(Lcom/wm65/launcher/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
