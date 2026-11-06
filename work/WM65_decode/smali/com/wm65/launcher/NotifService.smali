.class public Lcom/wm65/launcher/NotifService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotifService.java"


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final WATCH_PHONE:[Ljava/lang/String;

.field private static final WATCH_SMS:[Ljava/lang/String;

.field private static final WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static volatile sConnected:Z

.field private static final sKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sLatest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile sOnCountsChanged:Ljava/lang/Runnable;

.field private static volatile sSmsPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 24
    const-string v8, "com.miui.dialer"

    const-string v9, "com.hihonor.dialer"

    const-string v0, "com.android.server.telecom"

    const-string v1, "com.android.dialer"

    const-string v2, "com.google.android.dialer"

    const-string v3, "com.samsung.android.dialer"

    const-string v4, "com.samsung.android.app.telephonyui"

    const-string v5, "com.coloros.dialer"

    const-string v6, "com.oppo.dialer"

    const-string v7, "com.vivo.dialer"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wm65/launcher/NotifService;->WATCH_PHONE:[Ljava/lang/String;

    .line 39
    const-string v5, "com.hihonor.mms"

    const-string v6, "com.huawei.mms"

    const-string v1, "com.android.mms"

    const-string v2, "com.google.android.apps.messaging"

    const-string v3, "com.sec.android.app.messaging"

    const-string v4, "com.samsung.android.messaging"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wm65/launcher/NotifService;->WATCH_SMS:[Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wm65/launcher/NotifService;->sKeys:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    .line 78
    new-instance v0, Landroid/os/Handler;

    .line 79
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wm65/launcher/NotifService;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method public static component(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 356
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/wm65/launcher/NotifService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static countFor(Ljava/lang/String;)I
    .locals 1

    .line 95
    sget-object v0, Lcom/wm65/launcher/NotifService;->sKeys:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 96
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static countable(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 236
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wm65/launcher/NotifService;->isWatched(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 243
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 246
    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wm65/launcher/NotifService;->isSmsPkg(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    return v0

    :catchall_0
    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isConnected()Z
    .locals 1

    .line 90
    sget-boolean v0, Lcom/wm65/launcher/NotifService;->sConnected:Z

    return v0
.end method

.method private static isIn(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 277
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 278
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isPhonePkg(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 290
    :cond_0
    sget-object v1, Lcom/wm65/launcher/NotifService;->WATCH_PHONE:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 291
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isSmsPkg(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 265
    :cond_0
    sget-object v1, Lcom/wm65/launcher/NotifService;->sSmsPkg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 268
    :cond_1
    sget-object v1, Lcom/wm65/launcher/NotifService;->WATCH_SMS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/wm65/launcher/NotifService;->isIn(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 272
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 273
    const-string v1, ".mms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".sms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".messaging"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0
.end method

.method private static isWatched(Ljava/lang/String;)Z
    .locals 1

    .line 257
    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/wm65/launcher/NotifService;->isPhonePkg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/wm65/launcher/NotifService;->isSmsPkg(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static keyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 2

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 216
    :catchall_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static latestFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static notifyChanged()V
    .locals 2

    .line 82
    sget-object v0, Lcom/wm65/launcher/NotifService;->sOnCountsChanged:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 84
    sget-object v1, Lcom/wm65/launcher/NotifService;->MAIN:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static phoneCount()I
    .locals 5

    .line 107
    sget-object v0, Lcom/wm65/launcher/NotifService;->WATCH_PHONE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 108
    invoke-static {v4}, Lcom/wm65/launcher/NotifService;->countFor(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public static phoneLatest()Ljava/lang/String;
    .locals 6

    .line 134
    sget-object v0, Lcom/wm65/launcher/NotifService;->WATCH_PHONE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 135
    sget-object v5, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private rebuildAll([Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 300
    sget-object v0, Lcom/wm65/launcher/NotifService;->sKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 301
    sget-object v0, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 305
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 306
    invoke-static {v2}, Lcom/wm65/launcher/NotifService;->countable(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    invoke-static {v2}, Lcom/wm65/launcher/NotifService;->recordLatest(Landroid/service/notification/StatusBarNotification;)V

    .line 308
    invoke-static {v2}, Lcom/wm65/launcher/NotifService;->keyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 310
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wm65/launcher/NotifService;->setFor(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static recordLatest(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 320
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_4

    .line 323
    :cond_0
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 325
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 328
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "\uff1a"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 331
    sget-object v1, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :catchall_0
    :cond_5
    :goto_4
    return-void
.end method

.method private refreshSmsPkg()V
    .locals 2

    .line 58
    :try_start_0
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    sput-object v0, Lcom/wm65/launcher/NotifService;->sSmsPkg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static setFor(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/wm65/launcher/NotifService;->sKeys:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 224
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static settingsIntent()Landroid/content/Intent;
    .locals 2

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static smsCount()I
    .locals 5

    .line 116
    sget-object v0, Lcom/wm65/launcher/NotifService;->WATCH_SMS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 117
    invoke-static {v4}, Lcom/wm65/launcher/NotifService;->countFor(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/wm65/launcher/NotifService;->sSmsPkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 120
    sget-object v1, Lcom/wm65/launcher/NotifService;->WATCH_SMS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wm65/launcher/NotifService;->isIn(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-static {v0}, Lcom/wm65/launcher/NotifService;->countFor(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_1
    return v3
.end method

.method public static smsLatest()Ljava/lang/String;
    .locals 6

    .line 145
    sget-object v0, Lcom/wm65/launcher/NotifService;->sSmsPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    sget-object v1, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 153
    :cond_0
    sget-object v0, Lcom/wm65/launcher/NotifService;->WATCH_SMS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 154
    sget-object v5, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static wechatCount()I
    .locals 1

    .line 101
    const-string v0, "com.tencent.mm"

    invoke-static {v0}, Lcom/wm65/launcher/NotifService;->countFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    sput-boolean v0, Lcom/wm65/launcher/NotifService;->sConnected:Z

    .line 346
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onListenerConnected()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    sput-boolean v0, Lcom/wm65/launcher/NotifService;->sConnected:Z

    .line 165
    invoke-direct {p0}, Lcom/wm65/launcher/NotifService;->refreshSmsPkg()V

    .line 167
    invoke-virtual {p0}, Lcom/wm65/launcher/NotifService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wm65/launcher/NotifService;->rebuildAll([Landroid/service/notification/StatusBarNotification;)V

    .line 168
    invoke-static {}, Lcom/wm65/launcher/NotifService;->notifyChanged()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/wm65/launcher/NotifService;->sSmsPkg:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/wm65/launcher/NotifService;->refreshSmsPkg()V

    .line 179
    :cond_1
    invoke-static {p1}, Lcom/wm65/launcher/NotifService;->countable(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 182
    :cond_2
    invoke-static {p1}, Lcom/wm65/launcher/NotifService;->recordLatest(Landroid/service/notification/StatusBarNotification;)V

    .line 183
    invoke-static {p1}, Lcom/wm65/launcher/NotifService;->keyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 187
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wm65/launcher/NotifService;->setFor(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 188
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 189
    invoke-static {}, Lcom/wm65/launcher/NotifService;->notifyChanged()V

    :cond_4
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-static {p1}, Lcom/wm65/launcher/NotifService;->keyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 202
    :cond_1
    sget-object v1, Lcom/wm65/launcher/NotifService;->sKeys:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 203
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    sget-object v0, Lcom/wm65/launcher/NotifService;->sLatest:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_2
    invoke-static {}, Lcom/wm65/launcher/NotifService;->notifyChanged()V

    :cond_3
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 339
    sput-boolean v0, Lcom/wm65/launcher/NotifService;->sConnected:Z

    .line 340
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
