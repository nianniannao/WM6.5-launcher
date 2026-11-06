.class public final Lcom/wm65/launcher/WeatherHelper;
.super Ljava/lang/Object;
.source "WeatherHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/WeatherHelper$Weather;,
        Lcom/wm65/launcher/WeatherHelper$Callback;,
        Lcom/wm65/launcher/WeatherHelper$Day;
    }
.end annotation


# static fields
.field private static final CITY_ZH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EN_ZH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CITY:Ljava/lang/String; = "city"

.field private static final KEY_JSON:Ljava/lang/String; = "json"

.field private static final KEY_TS:Ljava/lang/String; = "ts"

.field private static final MAIN:Landroid/os/Handler;

.field private static final PREFS:Ljava/lang/String; = "wm65_weather"

.field private static final TTL_MS:J = 0x1b7740L

.field private static sFetching:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetMAIN()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/wm65/launcher/WeatherHelper;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsFetching(Z)V
    .locals 0

    sput-boolean p0, Lcom/wm65/launcher/WeatherHelper;->sFetching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smfetch(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smprefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wm65/launcher/WeatherHelper;->MAIN:Landroid/os/Handler;

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wm65/launcher/WeatherHelper;->EN_ZH:Ljava/util/Map;

    .line 348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/wm65/launcher/WeatherHelper;->CITY_ZH:Ljava/util/Map;

    .line 352
    const-string v2, "sunny"

    const-string v3, "\u6674"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v2, "clear"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "clear skies"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "partly cloudy"

    const-string v3, "\u591a\u4e91"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "cloudy"

    const-string v3, "\u9634"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "overcast"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "mist"

    const-string v3, "\u8584\u96fe"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "fog"

    const-string v3, "\u96fe"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "freezing fog"

    const-string v3, "\u51bb\u96fe"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v2, "haze"

    const-string v3, "\u973e"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v2, "smoke"

    const-string v3, "\u70df\u5c18"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v2, "dust"

    const-string v3, "\u626c\u5c18"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "windy"

    const-string v3, "\u6709\u98ce"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "light drizzle"

    const-string v3, "\u5c0f\u6bdb\u6bdb\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v2, "drizzle"

    const-string v3, "\u6bdb\u6bdb\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v2, "freezing drizzle"

    const-string v3, "\u51bb\u6bdb\u6bdb\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v2, "heavy freezing drizzle"

    const-string v3, "\u5f3a\u51bb\u6bdb\u6bdb\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v2, "patchy light drizzle"

    const-string v3, "\u5c40\u90e8\u6bdb\u6bdb\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v2, "patchy rain possible"

    const-string v3, "\u5c40\u90e8\u6709\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "patchy light rain"

    const-string v3, "\u5c40\u90e8\u5c0f\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v2, "patchy moderate rain"

    const-string v3, "\u5c40\u90e8\u4e2d\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v2, "patchy heavy rain"

    const-string v3, "\u5c40\u90e8\u5927\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v2, "light rain"

    const-string v3, "\u5c0f\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v2, "moderate rain"

    const-string v3, "\u4e2d\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v2, "moderate rain at times"

    const-string v3, "\u95f4\u6b47\u6027\u4e2d\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v2, "heavy rain"

    const-string v3, "\u5927\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v2, "heavy rain at times"

    const-string v3, "\u95f4\u6b47\u6027\u5927\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v2, "torrential rain"

    const-string v3, "\u66b4\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v2, "light rain shower"

    const-string v4, "\u5c0f\u9635\u96e8"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v2, "moderate or heavy rain shower"

    const-string v4, "\u4e2d\u5230\u5927\u9635\u96e8"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "torrential rain shower"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "scattered showers"

    const-string v3, "\u5206\u6563\u6027\u9635\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v2, "showers"

    const-string v3, "\u9635\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v2, "light freezing rain"

    const-string v3, "\u8f7b\u5ea6\u51bb\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v2, "moderate or heavy freezing rain"

    const-string v3, "\u4e2d\u5230\u5f3a\u51bb\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v2, "light sleet"

    const-string v3, "\u8f7b\u5ea6\u96e8\u5939\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v2, "moderate or heavy sleet"

    const-string v3, "\u4e2d\u5230\u5f3a\u96e8\u5939\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v2, "light sleet showers"

    const-string v3, "\u5c0f\u9635\u96e8\u5939\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v2, "moderate or heavy sleet showers"

    const-string v3, "\u4e2d\u5230\u5927\u9635\u96e8\u5939\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v2, "patchy sleet possible"

    const-string v3, "\u5c40\u90e8\u96e8\u5939\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v2, "patchy snow possible"

    const-string v3, "\u5c40\u90e8\u6709\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v2, "patchy light snow"

    const-string v3, "\u5c40\u90e8\u5c0f\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v2, "patchy moderate snow"

    const-string v3, "\u5c40\u90e8\u4e2d\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v2, "patchy heavy snow"

    const-string v3, "\u5c40\u90e8\u5927\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v2, "light snow"

    const-string v3, "\u5c0f\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v2, "moderate snow"

    const-string v3, "\u4e2d\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v2, "heavy snow"

    const-string v3, "\u5927\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v2, "light snow showers"

    const-string v3, "\u5c0f\u9635\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v2, "moderate or heavy snow showers"

    const-string v3, "\u4e2d\u5230\u5927\u9635\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v2, "blowing snow"

    const-string v3, "\u98ce\u5439\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v2, "blizzard"

    const-string v3, "\u66b4\u98ce\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v2, "ice pellets"

    const-string v3, "\u51b0\u7c92"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v2, "light showers of ice pellets"

    const-string v3, "\u5c0f\u9635\u51b0\u7c92"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v2, "moderate or heavy showers of ice pellets"

    const-string v3, "\u4e2d\u5230\u5927\u9635\u51b0\u7c92"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v2, "thundery outbreaks possible"

    const-string v3, "\u53ef\u80fd\u6709\u96f7\u9635\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v2, "patchy light rain with thunder"

    const-string v3, "\u5c40\u90e8\u96f7\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v2, "moderate or heavy rain with thunder"

    const-string v3, "\u4e2d\u5230\u5927\u96f7\u96e8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v2, "patchy light snow with thunder"

    const-string v3, "\u5c40\u90e8\u96f7\u9635\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v2, "moderate or heavy snow with thunder"

    const-string v3, "\u4e2d\u5230\u5927\u96f7\u9635\u96ea"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v0, "beijing"

    const-string v2, "\u5317\u4eac"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v0, "shanghai"

    const-string v2, "\u4e0a\u6d77"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v0, "guangzhou"

    const-string v2, "\u5e7f\u5dde"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v0, "shenzhen"

    const-string v2, "\u6df1\u5733"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v0, "hangzhou"

    const-string v2, "\u676d\u5dde"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v0, "nanjing"

    const-string v2, "\u5357\u4eac"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v0, "chengdu"

    const-string v2, "\u6210\u90fd"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v0, "chongqing"

    const-string v2, "\u91cd\u5e86"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "wuhan"

    const-string v2, "\u6b66\u6c49"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v0, "xian"

    const-string v2, "\u897f\u5b89"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v0, "tianjin"

    const-string v2, "\u5929\u6d25"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v0, "suzhou"

    const-string v2, "\u82cf\u5dde"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v0, "qingdao"

    const-string v2, "\u9752\u5c9b"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "dalian"

    const-string v2, "\u5927\u8fde"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "shenyang"

    const-string v2, "\u6c88\u9633"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v0, "harbin"

    const-string v2, "\u54c8\u5c14\u6ee8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v0, "zhengzhou"

    const-string v2, "\u90d1\u5dde"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v0, "changsha"

    const-string v2, "\u957f\u6c99"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v0, "kunming"

    const-string v2, "\u6606\u660e"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v0, "xiamen"

    const-string v2, "\u53a6\u95e8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v0, "fuzhou"

    const-string v2, "\u798f\u5dde"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v0, "jinan"

    const-string v2, "\u6d4e\u5357"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v0, "hefei"

    const-string v2, "\u5408\u80a5"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "nanchang"

    const-string v2, "\u5357\u660c"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v0, "guiyang"

    const-string v2, "\u8d35\u9633"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v0, "nanning"

    const-string v2, "\u5357\u5b81"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v0, "lanzhou"

    const-string v2, "\u5170\u5dde"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v0, "shijiazhuang"

    const-string v2, "\u77f3\u5bb6\u5e84"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v0, "taiyuan"

    const-string v2, "\u592a\u539f"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v0, "hohhot"

    const-string v2, "\u547c\u548c\u6d69\u7279"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v0, "urumqi"

    const-string v2, "\u4e4c\u9c81\u6728\u9f50"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v0, "lhasa"

    const-string v2, "\u62c9\u8428"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v0, "haikou"

    const-string v2, "\u6d77\u53e3"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v0, "hong kong"

    const-string v2, "\u4e2d\u56fd\u9999\u6e2f"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v0, "macau"

    const-string v2, "\u4e2d\u56fd\u6fb3\u95e8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v0, "macao"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v0, "taipei"

    const-string v2, "\u4e2d\u56fd\u53f0\u5317"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v0, "tokyo"

    const-string v2, "\u4e1c\u4eac"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v0, "osaka"

    const-string v2, "\u5927\u962a"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v0, "seoul"

    const-string v2, "\u9996\u5c14"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v0, "singapore"

    const-string v2, "\u65b0\u52a0\u5761"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v0, "bangkok"

    const-string v2, "\u66fc\u8c37"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v0, "new york"

    const-string v2, "\u7ebd\u7ea6"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v0, "los angeles"

    const-string v2, "\u6d1b\u6749\u77f6"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v0, "san francisco"

    const-string v2, "\u65e7\u91d1\u5c71"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v0, "london"

    const-string v2, "\u4f26\u6566"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v0, "paris"

    const-string v2, "\u5df4\u9ece"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v0, "berlin"

    const-string v2, "\u67cf\u6797"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v0, "sydney"

    const-string v2, "\u6089\u5c3c"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v0, "melbourne"

    const-string v2, "\u58a8\u5c14\u672c"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v0, "toronto"

    const-string v2, "\u591a\u4f26\u591a"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v0, "vancouver"

    const-string v2, "\u6e29\u54e5\u534e"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v0, "dubai"

    const-string v2, "\u8fea\u62dc"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cached(Landroid/content/Context;)Lcom/wm65/launcher/WeatherHelper$Weather;
    .locals 3

    .line 76
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "json"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 81
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->city(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/wm65/launcher/WeatherHelper;->parse(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/wm65/launcher/WeatherHelper$Weather;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method public static city(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 62
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "city"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static emoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 528
    const-string v0, "\u26c5"

    if-nez p0, :cond_0

    return-object v0

    .line 531
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "395"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "392"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "389"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "386"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "377"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "374"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "371"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "368"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "359"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "356"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "353"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "350"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "338"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "335"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "332"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "329"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "326"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "323"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "308"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "305"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "302"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "299"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "296"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "293"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "284"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "281"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "266"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "263"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "260"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "248"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "230"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "227"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "200"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_21
    const-string v1, "182"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_22
    const-string v1, "179"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_23
    const-string v1, "176"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_24
    const-string v1, "143"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_0

    :cond_25
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_25
    const-string v1, "122"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_26
    const-string v1, "119"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_27
    const-string v1, "113"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 552
    :pswitch_0
    const-string p0, "\ud83c\udf27\ufe0f"

    return-object p0

    .line 572
    :pswitch_1
    const-string p0, "\u26c8\ufe0f"

    return-object p0

    .line 567
    :pswitch_2
    const-string p0, "\u2744\ufe0f"

    return-object p0

    .line 545
    :pswitch_3
    const-string p0, "\ud83c\udf26\ufe0f"

    return-object p0

    .line 538
    :pswitch_4
    const-string p0, "\ud83c\udf2b\ufe0f"

    return-object p0

    .line 535
    :pswitch_5
    const-string p0, "\u2601\ufe0f"

    return-object p0

    .line 532
    :pswitch_6
    const-string p0, "\u2600\ufe0f"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xbe13 -> :sswitch_27
        0xbe19 -> :sswitch_26
        0xbe31 -> :sswitch_25
        0xbe70 -> :sswitch_24
        0xbed0 -> :sswitch_23
        0xbed3 -> :sswitch_22
        0xbeeb -> :sswitch_21
        0xc1b2 -> :sswitch_20
        0xc1f7 -> :sswitch_1f
        0xc20f -> :sswitch_1e
        0xc236 -> :sswitch_1d
        0xc26c -> :sswitch_1c
        0xc26f -> :sswitch_1b
        0xc272 -> :sswitch_1a
        0xc2ab -> :sswitch_19
        0xc2ae -> :sswitch_18
        0xc2cc -> :sswitch_17
        0xc2cf -> :sswitch_16
        0xc2d2 -> :sswitch_15
        0xc575 -> :sswitch_14
        0xc578 -> :sswitch_13
        0xc57b -> :sswitch_12
        0xc5b4 -> :sswitch_11
        0xc5b7 -> :sswitch_10
        0xc5ba -> :sswitch_f
        0xc5d2 -> :sswitch_e
        0xc5d5 -> :sswitch_d
        0xc5d8 -> :sswitch_c
        0xc60e -> :sswitch_b
        0xc611 -> :sswitch_a
        0xc614 -> :sswitch_9
        0xc617 -> :sswitch_8
        0xc635 -> :sswitch_7
        0xc64d -> :sswitch_6
        0xc650 -> :sswitch_5
        0xc653 -> :sswitch_4
        0xc671 -> :sswitch_3
        0xc674 -> :sswitch_2
        0xc68c -> :sswitch_1
        0xc68f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static enDesc(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 251
    const-string v0, "weatherDesc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 252
    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static fetch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "https://wttr.in/"

    .line 130
    const-string v1, "UTF-8"

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    .line 132
    :goto_1
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?format=j1&lang=zh"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1770

    .line 134
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 135
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 136
    const-string v0, "User-Agent"

    const-string v3, "curl/8.0"

    invoke-virtual {p0, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_3

    if-eqz p0, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v2

    .line 140
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 141
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 147
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_5

    .line 153
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 155
    :cond_6
    throw p0

    :catch_0
    move-object p0, v2

    :catch_1
    if-eqz p0, :cond_7

    .line 153
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v2
.end method

.method public static forceRefresh(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V
    .locals 2

    .line 123
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ts"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    invoke-static {p0, p1}, Lcom/wm65/launcher/WeatherHelper;->refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V

    return-void
.end method

.method private static hasChinese(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 262
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 263
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4e00

    if-lt v2, v3, :cond_1

    const v3, 0x9fff

    if-gt v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static names(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 1

    .line 217
    const-string v0, ""

    .line 218
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static parse(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/wm65/launcher/WeatherHelper$Weather;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/wm65/launcher/WeatherHelper$Weather;

    invoke-direct {v0}, Lcom/wm65/launcher/WeatherHelper$Weather;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iput-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->city:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_0
    const-string p1, "nearest_area"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "areaName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 168
    invoke-static {p1, v1}, Lcom/wm65/launcher/WeatherHelper;->names(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wm65/launcher/WeatherHelper;->zhCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->city:Ljava/lang/String;

    .line 171
    :cond_1
    :goto_0
    iget-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->city:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->city:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 172
    :cond_2
    const-string p1, "\u672c\u5730"

    iput-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->city:Ljava/lang/String;

    .line 174
    :cond_3
    const-string p1, "current_condition"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 175
    const-string v2, "weatherCode"

    const-string v3, "\u00b0"

    const-string v4, "--"

    const-string v5, ""

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 176
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 177
    const-string v6, "temp_C"

    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->temp:Ljava/lang/String;

    .line 178
    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    invoke-static {v6}, Lcom/wm65/launcher/WeatherHelper;->emoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->emoji:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/wm65/launcher/WeatherHelper;->zh(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->desc:Ljava/lang/String;

    .line 182
    :cond_4
    iget-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->temp:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 183
    const-string p1, "--\u00b0"

    iput-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->temp:Ljava/lang/String;

    .line 185
    :cond_5
    iget-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->emoji:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 186
    const-string p1, "\ud83c\udf21\ufe0f"

    iput-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->emoji:Ljava/lang/String;

    .line 188
    :cond_6
    iget-object p1, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->desc:Ljava/lang/String;

    if-nez p1, :cond_7

    .line 189
    iput-object v5, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->desc:Ljava/lang/String;

    .line 191
    :cond_7
    const-string p1, "weather"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_9

    const/4 p1, 0x5

    .line 193
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_9

    .line 195
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 196
    new-instance v7, Lcom/wm65/launcher/WeatherHelper$Day;

    invoke-direct {v7}, Lcom/wm65/launcher/WeatherHelper$Day;-><init>()V

    .line 197
    const-string v8, "date"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/wm65/launcher/WeatherHelper;->weekdayLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/wm65/launcher/WeatherHelper$Day;->label:Ljava/lang/String;

    .line 200
    const-string v8, "hourly"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 201
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 202
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x4

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 203
    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_8
    move-object v8, v5

    .line 205
    :goto_2
    invoke-static {v8}, Lcom/wm65/launcher/WeatherHelper;->emoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/wm65/launcher/WeatherHelper$Day;->emoji:Ljava/lang/String;

    .line 206
    invoke-static {v8}, Lcom/wm65/launcher/WeatherHelper;->zhCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/wm65/launcher/WeatherHelper$Day;->desc:Ljava/lang/String;

    .line 207
    const-string v8, "maxtempC"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/wm65/launcher/WeatherHelper$Day;->max:Ljava/lang/String;

    .line 208
    const-string v8, "mintempC"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/wm65/launcher/WeatherHelper$Day;->min:Ljava/lang/String;

    .line 209
    iget-object v6, v0, Lcom/wm65/launcher/WeatherHelper$Weather;->days:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 71
    const-string v0, "wm65_weather"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static refreshIfNeeded(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V
    .locals 4

    .line 89
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->cached(Landroid/content/Context;)Lcom/wm65/launcher/WeatherHelper$Weather;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1, v0}, Lcom/wm65/launcher/WeatherHelper$Callback;->onUpdate(Lcom/wm65/launcher/WeatherHelper$Weather;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ts"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    sget-boolean v0, Lcom/wm65/launcher/WeatherHelper;->sFetching:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/wm65/launcher/WeatherHelper;->sFetching:Z

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wm65/launcher/WeatherHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/wm65/launcher/WeatherHelper$1;-><init>(Landroid/content/Context;Lcom/wm65/launcher/WeatherHelper$Callback;)V

    const-string p0, "weather-fetch"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setCity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "city"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "json"

    .line 67
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "ts"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static weekdayLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    .line 330
    const-string p0, "\u4eca\u5929"

    return-object p0

    .line 333
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 336
    const-string v1, "\u5468\u65e5"

    const-string v2, "\u5468\u4e00"

    const-string v3, "\u5468\u4e8c"

    const-string v4, "\u5468\u4e09"

    const-string v5, "\u5468\u56db"

    const-string v6, "\u5468\u4e94"

    const-string v7, "\u5468\u516d"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x7

    .line 337
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    add-int/lit8 p1, p1, 0x1

    .line 339
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u5468"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zh(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 230
    const-string v0, "weatherCode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/wm65/launcher/WeatherHelper;->zhCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 235
    :cond_0
    const-string v0, "lang_zh"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/wm65/launcher/WeatherHelper;->hasChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 242
    :cond_1
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->enDesc(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->zhEn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p0, v0

    :cond_2
    return-object p0

    :cond_3
    return-object v1
.end method

.method private static zhCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/wm65/launcher/WeatherHelper;->hasChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    sget-object v0, Lcom/wm65/launcher/WeatherHelper;->CITY_ZH:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static zhCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 469
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 472
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "395"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x30

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "392"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x2f

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "389"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x2e

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "386"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x2d

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "377"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x2c

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "374"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x2b

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "371"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x2a

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "368"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x29

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "365"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x28

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "362"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "359"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "356"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "353"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "350"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "338"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "335"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "332"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "329"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "326"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "323"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "320"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "317"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "314"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "311"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "308"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "305"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "302"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "299"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "296"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "293"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "284"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "281"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "266"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "263"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "260"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "248"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "233"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "230"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "227"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "200"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "185"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "182"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2a
    const-string v1, "179"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2b
    const-string v1, "176"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2c
    const-string v1, "143"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2d
    const-string v1, "122"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_0

    :cond_2e
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2e
    const-string v1, "119"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_0

    :cond_2f
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2f
    const-string v1, "116"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_0

    :cond_30
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_30
    const-string v1, "113"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_0

    :cond_31
    const/4 v2, 0x0

    .line 522
    :goto_0
    const-string p0, "\u51bb\u96fe"

    const-string v1, "\u9634"

    packed-switch v2, :pswitch_data_0

    return-object v0

    .line 521
    :pswitch_0
    const-string p0, "\u4e2d\u5230\u5927\u96f7\u9635\u96ea"

    return-object p0

    .line 520
    :pswitch_1
    const-string p0, "\u5c40\u90e8\u96f7\u9635\u96ea"

    return-object p0

    .line 519
    :pswitch_2
    const-string p0, "\u4e2d\u5230\u5927\u96f7\u96e8"

    return-object p0

    .line 518
    :pswitch_3
    const-string p0, "\u5c40\u90e8\u96f7\u96e8"

    return-object p0

    .line 517
    :pswitch_4
    const-string p0, "\u4e2d\u5230\u5927\u9635\u51b0\u7c92"

    return-object p0

    .line 516
    :pswitch_5
    const-string p0, "\u5c0f\u9635\u51b0\u7c92"

    return-object p0

    .line 515
    :pswitch_6
    const-string p0, "\u4e2d\u5230\u5927\u9635\u96ea"

    return-object p0

    .line 514
    :pswitch_7
    const-string p0, "\u5c0f\u9635\u96ea"

    return-object p0

    .line 513
    :pswitch_8
    const-string p0, "\u4e2d\u5230\u5927\u9635\u96e8\u5939\u96ea"

    return-object p0

    .line 512
    :pswitch_9
    const-string p0, "\u5c0f\u9635\u96e8\u5939\u96ea"

    return-object p0

    .line 511
    :pswitch_a
    const-string p0, "\u66b4\u96e8"

    return-object p0

    .line 510
    :pswitch_b
    const-string p0, "\u4e2d\u5230\u5927\u9635\u96e8"

    return-object p0

    .line 509
    :pswitch_c
    const-string p0, "\u5c0f\u9635\u96e8"

    return-object p0

    .line 508
    :pswitch_d
    const-string p0, "\u51b0\u7c92"

    return-object p0

    .line 507
    :pswitch_e
    const-string p0, "\u5927\u96ea"

    return-object p0

    .line 506
    :pswitch_f
    const-string p0, "\u5c40\u90e8\u5927\u96ea"

    return-object p0

    .line 505
    :pswitch_10
    const-string p0, "\u4e2d\u96ea"

    return-object p0

    .line 504
    :pswitch_11
    const-string p0, "\u5c40\u90e8\u4e2d\u96ea"

    return-object p0

    .line 503
    :pswitch_12
    const-string p0, "\u5c0f\u96ea"

    return-object p0

    .line 502
    :pswitch_13
    const-string p0, "\u5c40\u90e8\u5c0f\u96ea"

    return-object p0

    .line 501
    :pswitch_14
    const-string p0, "\u4e2d\u5230\u5f3a\u96e8\u5939\u96ea"

    return-object p0

    .line 500
    :pswitch_15
    const-string p0, "\u8f7b\u5ea6\u96e8\u5939\u96ea"

    return-object p0

    .line 499
    :pswitch_16
    const-string p0, "\u4e2d\u5230\u5f3a\u51bb\u96e8"

    return-object p0

    .line 498
    :pswitch_17
    const-string p0, "\u8f7b\u5ea6\u51bb\u96e8"

    return-object p0

    .line 497
    :pswitch_18
    const-string p0, "\u5927\u96e8"

    return-object p0

    .line 496
    :pswitch_19
    const-string p0, "\u95f4\u6b47\u6027\u5927\u96e8"

    return-object p0

    .line 495
    :pswitch_1a
    const-string p0, "\u4e2d\u96e8"

    return-object p0

    .line 494
    :pswitch_1b
    const-string p0, "\u95f4\u6b47\u6027\u4e2d\u96e8"

    return-object p0

    .line 493
    :pswitch_1c
    const-string p0, "\u5c0f\u96e8"

    return-object p0

    .line 492
    :pswitch_1d
    const-string p0, "\u5c40\u90e8\u5c0f\u96e8"

    return-object p0

    .line 491
    :pswitch_1e
    const-string p0, "\u5f3a\u51bb\u96e8"

    return-object p0

    .line 490
    :pswitch_1f
    const-string p0, "\u51bb\u6bdb\u6bdb\u96e8"

    return-object p0

    .line 489
    :pswitch_20
    const-string p0, "\u6bdb\u6bdb\u96e8"

    return-object p0

    .line 488
    :pswitch_21
    const-string p0, "\u5c40\u90e8\u6bdb\u6bdb\u96e8"

    :pswitch_22
    return-object p0

    .line 486
    :pswitch_23
    const-string p0, "\u96fe"

    :pswitch_24
    return-object p0

    .line 484
    :pswitch_25
    const-string p0, "\u66b4\u98ce\u96ea"

    return-object p0

    .line 483
    :pswitch_26
    const-string p0, "\u98ce\u5439\u96ea"

    return-object p0

    .line 482
    :pswitch_27
    const-string p0, "\u53ef\u80fd\u6709\u96f7\u9635\u96e8"

    return-object p0

    .line 481
    :pswitch_28
    const-string p0, "\u5c40\u90e8\u51bb\u96e8"

    return-object p0

    .line 480
    :pswitch_29
    const-string p0, "\u5c40\u90e8\u96e8\u5939\u96ea"

    return-object p0

    .line 479
    :pswitch_2a
    const-string p0, "\u5c40\u90e8\u6709\u96ea"

    return-object p0

    .line 478
    :pswitch_2b
    const-string p0, "\u5c40\u90e8\u6709\u96e8"

    return-object p0

    .line 477
    :pswitch_2c
    const-string p0, "\u8584\u96fe"

    return-object p0

    :pswitch_2d
    return-object v1

    .line 474
    :pswitch_2e
    const-string p0, "\u591a\u4e91"

    return-object p0

    .line 473
    :pswitch_2f
    const-string p0, "\u6674"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xbe13 -> :sswitch_30
        0xbe16 -> :sswitch_2f
        0xbe19 -> :sswitch_2e
        0xbe31 -> :sswitch_2d
        0xbe70 -> :sswitch_2c
        0xbed0 -> :sswitch_2b
        0xbed3 -> :sswitch_2a
        0xbeeb -> :sswitch_29
        0xbeee -> :sswitch_28
        0xc1b2 -> :sswitch_27
        0xc1f7 -> :sswitch_26
        0xc20f -> :sswitch_25
        0xc212 -> :sswitch_24
        0xc236 -> :sswitch_23
        0xc26c -> :sswitch_22
        0xc26f -> :sswitch_21
        0xc272 -> :sswitch_20
        0xc2ab -> :sswitch_1f
        0xc2ae -> :sswitch_1e
        0xc2cc -> :sswitch_1d
        0xc2cf -> :sswitch_1c
        0xc2d2 -> :sswitch_1b
        0xc575 -> :sswitch_1a
        0xc578 -> :sswitch_19
        0xc57b -> :sswitch_18
        0xc593 -> :sswitch_17
        0xc596 -> :sswitch_16
        0xc599 -> :sswitch_15
        0xc5b1 -> :sswitch_14
        0xc5b4 -> :sswitch_13
        0xc5b7 -> :sswitch_12
        0xc5ba -> :sswitch_11
        0xc5d2 -> :sswitch_10
        0xc5d5 -> :sswitch_f
        0xc5d8 -> :sswitch_e
        0xc60e -> :sswitch_d
        0xc611 -> :sswitch_c
        0xc614 -> :sswitch_b
        0xc617 -> :sswitch_a
        0xc62f -> :sswitch_9
        0xc632 -> :sswitch_8
        0xc635 -> :sswitch_7
        0xc64d -> :sswitch_6
        0xc650 -> :sswitch_5
        0xc653 -> :sswitch_4
        0xc671 -> :sswitch_3
        0xc674 -> :sswitch_2
        0xc68c -> :sswitch_1
        0xc68f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zhEn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 276
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 277
    sget-object v1, Lcom/wm65/launcher/WeatherHelper;->EN_ZH:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 281
    :cond_1
    const-string v1, "thunder"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "snow"

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u96f7\u9635\u96ea"

    goto :goto_0

    :cond_2
    const-string p0, "\u96f7\u9635\u96e8"

    :goto_0
    return-object p0

    .line 284
    :cond_3
    const-string v1, "sleet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    const-string p0, "\u96e8\u5939\u96ea"

    return-object p0

    .line 287
    :cond_4
    const-string v1, "blizzard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    const-string p0, "\u66b4\u98ce\u96ea"

    return-object p0

    .line 290
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "patchy"

    const-string v3, "light"

    const-string v4, "heavy"

    if-eqz v1, :cond_9

    .line 291
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "\u5927\u96ea"

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    .line 292
    :cond_7
    const-string p0, "\u96ea"

    goto :goto_2

    :cond_8
    :goto_1
    const-string p0, "\u5c0f\u96ea"

    :goto_2
    return-object p0

    .line 294
    :cond_9
    const-string v1, "drizzle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 295
    const-string p0, "\u6bdb\u6bdb\u96e8"

    return-object p0

    .line 297
    :cond_a
    const-string v1, "rain"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 298
    const-string v0, "torrential"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 299
    :cond_b
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_3

    :cond_c
    const-string p0, "\u96e8"

    goto :goto_5

    :cond_d
    :goto_3
    const-string p0, "\u5c0f\u96e8"

    goto :goto_5

    .line 298
    :cond_e
    :goto_4
    const-string p0, "\u5927\u96e8"

    :goto_5
    return-object p0

    .line 301
    :cond_f
    const-string v1, "fog"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 302
    const-string p0, "\u96fe"

    return-object p0

    .line 304
    :cond_10
    const-string v1, "mist"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "haze"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    .line 307
    :cond_11
    const-string v1, "overcast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u9634"

    if-eqz v1, :cond_12

    return-object v2

    .line 310
    :cond_12
    const-string v1, "cloudy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 311
    const-string v0, "partly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string v2, "\u591a\u4e91"

    :cond_13
    return-object v2

    .line 313
    :cond_14
    const-string v1, "clear"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "sunny"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_6

    :cond_15
    return-object v0

    .line 314
    :cond_16
    :goto_6
    const-string p0, "\u6674"

    return-object p0

    .line 305
    :cond_17
    :goto_7
    const-string p0, "\u8584\u96fe"

    return-object p0

    :cond_18
    :goto_8
    return-object v0
.end method
