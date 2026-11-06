.class Lcom/wm65/launcher/MainActivity$39;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/WeatherHelper$Callback;


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

    .line 2407
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$39;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/wm65/launcher/WeatherHelper$Weather;)V
    .locals 1

    .line 2410
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$39;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0, p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mrefreshWeatherUi(Lcom/wm65/launcher/MainActivity;Lcom/wm65/launcher/WeatherHelper$Weather;)V

    return-void
.end method
