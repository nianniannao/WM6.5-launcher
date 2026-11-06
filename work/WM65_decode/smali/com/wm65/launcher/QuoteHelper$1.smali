.class Lcom/wm65/launcher/QuoteHelper$1;
.super Ljava/lang/Object;
.source "QuoteHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/QuoteHelper;->refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/QuoteHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$cb:Lcom/wm65/launcher/QuoteHelper$Callback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/wm65/launcher/QuoteHelper$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/wm65/launcher/QuoteHelper$1;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/wm65/launcher/QuoteHelper$1;->val$cb:Lcom/wm65/launcher/QuoteHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/wm65/launcher/QuoteHelper$1;->val$app:Landroid/content/Context;

    invoke-static {v1}, Lcom/wm65/launcher/QuoteHelper;->-$$Nest$smfetch(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/wm65/launcher/QuoteHelper$1;->val$app:Landroid/content/Context;

    invoke-static {v2}, Lcom/wm65/launcher/QuoteHelper;->-$$Nest$smprefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const-string v3, "failed"

    const-string v4, "ts"

    const-string v5, "date"

    if-nez v1, :cond_0

    .line 161
    :try_start_1
    invoke-static {}, Lcom/wm65/launcher/QuoteHelper;->-$$Nest$smtoday()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v4, 0x1

    .line 163
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :cond_0
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 167
    const-string v7, "t"

    iget-object v8, v1, Lcom/wm65/launcher/QuoteHelper$Quote;->text:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v7, "o"

    iget-object v8, v1, Lcom/wm65/launcher/QuoteHelper$Quote;->origin:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v7, "a"

    iget-object v8, v1, Lcom/wm65/launcher/QuoteHelper$Quote;->author:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v7, "json"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 171
    invoke-static {}, Lcom/wm65/launcher/QuoteHelper;->-$$Nest$smtoday()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 173
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :goto_0
    if-eqz v1, :cond_1

    .line 177
    :try_start_3
    iget-object v2, p0, Lcom/wm65/launcher/QuoteHelper$1;->val$cb:Lcom/wm65/launcher/QuoteHelper$Callback;

    if-eqz v2, :cond_1

    .line 178
    invoke-static {}, Lcom/wm65/launcher/QuoteHelper;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/wm65/launcher/QuoteHelper$1$1;

    invoke-direct {v3, p0, v1}, Lcom/wm65/launcher/QuoteHelper$1$1;-><init>(Lcom/wm65/launcher/QuoteHelper$1;Lcom/wm65/launcher/QuoteHelper$Quote;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :catchall_0
    :cond_1
    invoke-static {v0}, Lcom/wm65/launcher/QuoteHelper;->-$$Nest$sfputsFetching(Z)V

    return-void
.end method
