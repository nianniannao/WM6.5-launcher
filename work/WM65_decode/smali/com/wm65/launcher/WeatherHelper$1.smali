.class Lcom/wm65/launcher/WeatherHelper$1;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/WeatherHelper;->refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$cb:Lcom/wm65/launcher/WeatherHelper$Callback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/wm65/launcher/WeatherHelper$1;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/wm65/launcher/WeatherHelper$1;->val$cb:Lcom/wm65/launcher/WeatherHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/wm65/launcher/WeatherHelper$1;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lcom/wm65/launcher/WeatherHelper;->city(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wm65/launcher/WeatherHelper;->-$$Nest$smfetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/wm65/launcher/WeatherHelper$1;->val$app:Landroid/content/Context;

    invoke-static {v1}, Lcom/wm65/launcher/WeatherHelper;->-$$Nest$smprefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "json"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ts"

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    iget-object v0, p0, Lcom/wm65/launcher/WeatherHelper$1;->val$app:Landroid/content/Context;

    invoke-static {v0}, Lcom/wm65/launcher/WeatherHelper;->cached(Landroid/content/Context;)Lcom/wm65/launcher/WeatherHelper$Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/wm65/launcher/WeatherHelper$1;->val$cb:Lcom/wm65/launcher/WeatherHelper$Callback;

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lcom/wm65/launcher/WeatherHelper;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/wm65/launcher/WeatherHelper$1$1;

    invoke-direct {v2, p0, v0}, Lcom/wm65/launcher/WeatherHelper$1$1;-><init>(Lcom/wm65/launcher/WeatherHelper$1;Lcom/wm65/launcher/WeatherHelper$Weather;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Lcom/wm65/launcher/WeatherHelper;->-$$Nest$sfputsFetching(Z)V

    return-void
.end method
