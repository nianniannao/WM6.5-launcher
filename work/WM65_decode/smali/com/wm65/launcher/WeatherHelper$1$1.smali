.class Lcom/wm65/launcher/WeatherHelper$1$1;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/WeatherHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/WeatherHelper$1;

.field final synthetic val$w:Lcom/wm65/launcher/WeatherHelper$Weather;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/WeatherHelper$1;Lcom/wm65/launcher/WeatherHelper$Weather;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/wm65/launcher/WeatherHelper$1$1;->this$0:Lcom/wm65/launcher/WeatherHelper$1;

    iput-object p2, p0, Lcom/wm65/launcher/WeatherHelper$1$1;->val$w:Lcom/wm65/launcher/WeatherHelper$Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/wm65/launcher/WeatherHelper$1$1;->this$0:Lcom/wm65/launcher/WeatherHelper$1;

    iget-object v0, v0, Lcom/wm65/launcher/WeatherHelper$1;->val$cb:Lcom/wm65/launcher/WeatherHelper$Callback;

    iget-object v1, p0, Lcom/wm65/launcher/WeatherHelper$1$1;->val$w:Lcom/wm65/launcher/WeatherHelper$Weather;

    invoke-interface {v0, v1}, Lcom/wm65/launcher/WeatherHelper$Callback;->onUpdate(Lcom/wm65/launcher/WeatherHelper$Weather;)V

    return-void
.end method
