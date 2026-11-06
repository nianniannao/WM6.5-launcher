.class public final Lcom/wm65/launcher/QuoteHelper;
.super Ljava/lang/Object;
.source "QuoteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/QuoteHelper$Quote;,
        Lcom/wm65/launcher/QuoteHelper$Callback;
    }
.end annotation


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_FAILED:Ljava/lang/String; = "failed"

.field private static final KEY_JSON:Ljava/lang/String; = "json"

.field private static final KEY_TS:Ljava/lang/String; = "ts"

.field private static final MAIN:Landroid/os/Handler;

.field private static final MAX_LEN:I = 0x14

.field private static final OFFLINE:[[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "wm65_quote"

.field private static final RETRY_MS:J = 0x1b7740L

.field private static sFetching:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetMAIN()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/wm65/launcher/QuoteHelper;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsFetching(Z)V
    .locals 0

    sput-boolean p0, Lcom/wm65/launcher/QuoteHelper;->sFetching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smfetch(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;
    .locals 0

    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->fetch(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smprefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoday()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/wm65/launcher/QuoteHelper;->today()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wm65/launcher/QuoteHelper;->MAIN:Landroid/os/Handler;

    .line 55
    const-string v0, "\u7ec8\u5357\u522b\u4e1a"

    const-string v1, "\u738b\u7ef4"

    const-string v2, "\u884c\u5230\u6c34\u7a77\u5904\uff0c\u5750\u770b\u4e91\u8d77\u65f6\u3002"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "\u5c71\u9ad8\u6708\u5c0f\uff0c\u6c34\u843d\u77f3\u51fa\u3002"

    const-string v1, "\u540e\u8d64\u58c1\u8d4b"

    const-string v2, "\u82cf\u8f7c"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u4f46\u613f\u4eba\u957f\u4e45\uff0c\u5343\u91cc\u5171\u5a75\u5a1f\u3002"

    const-string v1, "\u6c34\u8c03\u6b4c\u5934"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "\u996e\u9152"

    const-string v1, "\u9676\u6e0a\u660e"

    const-string v6, "\u91c7\u83ca\u4e1c\u7bf1\u4e0b\uff0c\u60a0\u7136\u89c1\u5357\u5c71\u3002"

    filled-new-array {v6, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "\u6d77\u5185\u5b58\u77e5\u5df1\uff0c\u5929\u6daf\u82e5\u6bd4\u90bb\u3002"

    const-string v1, "\u9001\u675c\u5c11\u5e9c\u4e4b\u4efb\u8700\u5dde"

    const-string v7, "\u738b\u52c3"

    filled-new-array {v0, v1, v7}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u671b\u5cb3"

    const-string v8, "\u675c\u752b"

    const-string v9, "\u4f1a\u5f53\u51cc\u7edd\u9876\uff0c\u4e00\u89c8\u4f17\u5c71\u5c0f\u3002"

    filled-new-array {v9, v1, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v1, "\u5c71\u91cd\u6c34\u590d\u7591\u65e0\u8def\uff0c\u67f3\u6697\u82b1\u660e\u53c8\u4e00\u6751\u3002"

    const-string v9, "\u6e38\u5c71\u897f\u6751"

    const-string v10, "\u9646\u6e38"

    filled-new-array {v1, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v1, "\u767b\u98de\u6765\u5cf0"

    const-string v11, "\u738b\u5b89\u77f3"

    const-string v12, "\u4e0d\u754f\u6d6e\u4e91\u906e\u671b\u773c\uff0c\u81ea\u7f18\u8eab\u5728\u6700\u9ad8\u5c42\u3002"

    filled-new-array {v12, v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const-string v11, "\u843d\u971e\u4e0e\u5b64\u9e5c\u9f50\u98de\uff0c\u79cb\u6c34\u5171\u957f\u5929\u4e00\u8272\u3002"

    const-string v12, "\u6ed5\u738b\u9601\u5e8f"

    filled-new-array {v11, v12, v7}, [Ljava/lang/String;

    move-result-object v11

    const-string v7, "\u7af9\u6756\u8292\u978b\u8f7b\u80dc\u9a6c\uff0c\u4e00\u84d1\u70df\u96e8\u4efb\u5e73\u751f\u3002"

    const-string v12, "\u5b9a\u98ce\u6ce2"

    filled-new-array {v7, v12, v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v7, "\u9882\u5e73\u5b89"

    const-string v14, "\u65e0\u95e8\u6167\u5f00"

    const-string v15, "\u6625\u6709\u767e\u82b1\u79cb\u6709\u6708\uff0c\u590f\u6709\u51c9\u98ce\u51ac\u6709\u96ea\u3002"

    filled-new-array {v15, v7, v14}, [Ljava/lang/String;

    move-result-object v14

    const-string v7, "\u7eb8\u4e0a\u5f97\u6765\u7ec8\u89c9\u6d45\uff0c\u7edd\u77e5\u6b64\u4e8b\u8981\u8eac\u884c\u3002"

    const-string v15, "\u51ac\u591c\u8bfb\u4e66\u793a\u5b50\u807f"

    filled-new-array {v7, v15, v10}, [Ljava/lang/String;

    move-result-object v15

    const-string v7, "\u89c2\u4e66\u6709\u611f"

    const-string v10, "\u6731\u71b9"

    move-object/from16 v16, v15

    const-string v15, "\u95ee\u6e20\u90a3\u5f97\u6e05\u5982\u8bb8\uff0c\u4e3a\u6709\u6e90\u5934\u6d3b\u6c34\u6765\u3002"

    filled-new-array {v15, v7, v10}, [Ljava/lang/String;

    move-result-object v15

    const-string v7, "\u83ab\u542c\u7a7f\u6797\u6253\u53f6\u58f0\uff0c\u4f55\u59a8\u541f\u5578\u4e14\u5f90\u884c\u3002"

    filled-new-array {v7, v12, v2}, [Ljava/lang/String;

    move-result-object v17

    const-string v7, "\u4eba\u751f\u5982\u9006\u65c5\uff0c\u6211\u4ea6\u662f\u884c\u4eba\u3002"

    const-string v10, "\u4e34\u6c5f\u4ed9"

    filled-new-array {v7, v10, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v7, "\u884c\u8def\u96be"

    const-string v10, "\u674e\u767d"

    const-string v12, "\u957f\u98ce\u7834\u6d6a\u4f1a\u6709\u65f6\uff0c\u76f4\u6302\u4e91\u5e06\u6d4e\u6ca7\u6d77\u3002"

    filled-new-array {v12, v7, v10}, [Ljava/lang/String;

    move-result-object v18

    move-object v7, v0

    move-object v10, v1

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    filled-new-array/range {v3 .. v18}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wm65/launcher/QuoteHelper;->OFFLINE:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cached(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;
    .locals 5

    .line 119
    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    const-string v1, "date"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string v2, "json"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {}, Lcom/wm65/launcher/QuoteHelper;->today()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "failed"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "a"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v3}, Lcom/wm65/launcher/QuoteHelper;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 129
    :catch_0
    :cond_0
    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->offline(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object p0

    return-object p0
.end method

.method private static dayIndex(Landroid/content/Context;)I
    .locals 1

    .line 85
    :try_start_0
    invoke-static {}, Lcom/wm65/launcher/QuoteHelper;->today()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/wm65/launcher/QuoteHelper;->OFFLINE:[[Ljava/lang/String;

    array-length v0, v0

    rem-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static fetch(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;
    .locals 5

    .line 196
    const-string p0, "https://v1.jinrishici.com/all.json"

    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->http(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 197
    const-string v1, ""

    if-eqz p0, :cond_0

    .line 199
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    const-string p0, "content"

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const-string v3, "origin"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "author"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2, v0}, Lcom/wm65/launcher/QuoteHelper;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 207
    :catch_0
    :cond_0
    const-string p0, "https://v1.hitokoto.cn/?c=d&c=e&c=i&c=k&max_length=20&encode=json"

    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->http(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 210
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    const-string p0, "hitokoto"

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    const-string v3, "from"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "from_who"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v1, v0}, Lcom/wm65/launcher/QuoteHelper;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static http(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 224
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x1388

    .line 225
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 226
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 227
    const-string v1, "User-Agent"

    const-string v2, "curl/8.0"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v0

    .line 231
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 232
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x2000

    if-ge v4, v5, :cond_2

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    .line 244
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 246
    :cond_4
    throw v0

    :catch_0
    move-object p0, v0

    :catch_1
    if-eqz p0, :cond_5

    .line 244
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v0
.end method

.method private static make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/wm65/launcher/QuoteHelper$Quote;
    .locals 1

    .line 97
    new-instance v0, Lcom/wm65/launcher/QuoteHelper$Quote;

    invoke-direct {v0}, Lcom/wm65/launcher/QuoteHelper$Quote;-><init>()V

    .line 98
    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->trim20(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/wm65/launcher/QuoteHelper$Quote;->text:Ljava/lang/String;

    .line 99
    const-string p0, ""

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/wm65/launcher/QuoteHelper$Quote;->origin:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, v0, Lcom/wm65/launcher/QuoteHelper$Quote;->author:Ljava/lang/String;

    .line 101
    iput-boolean p3, v0, Lcom/wm65/launcher/QuoteHelper$Quote;->offline:Z

    return-object v0
.end method

.method private static offline(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;
    .locals 4

    .line 92
    sget-object v0, Lcom/wm65/launcher/QuoteHelper;->OFFLINE:[[Ljava/lang/String;

    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->dayIndex(Landroid/content/Context;)I

    move-result p0

    aget-object p0, v0, p0

    const/4 v0, 0x0

    .line 93
    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v2, p0, v1

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-static {v0, v2, p0, v1}, Lcom/wm65/launcher/QuoteHelper;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object p0

    return-object p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 75
    const-string v0, "wm65_quote"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/QuoteHelper$Callback;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 135
    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->cached(Landroid/content/Context;)Lcom/wm65/launcher/QuoteHelper$Quote;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/wm65/launcher/QuoteHelper$Callback;->onUpdate(Lcom/wm65/launcher/QuoteHelper$Quote;)V

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/wm65/launcher/QuoteHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/wm65/launcher/QuoteHelper;->today()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    const-string v2, "failed"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 140
    const-string v3, "ts"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    return-void

    .line 147
    :cond_2
    sget-boolean v0, Lcom/wm65/launcher/QuoteHelper;->sFetching:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 150
    sput-boolean v0, Lcom/wm65/launcher/QuoteHelper;->sFetching:Z

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wm65/launcher/QuoteHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/wm65/launcher/QuoteHelper$1;-><init>(Landroid/content/Context;Lcom/wm65/launcher/QuoteHelper$Callback;)V

    const-string p0, "wm65-quote"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static today()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static trim20(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 108
    const-string p0, ""

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x13

    .line 114
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
