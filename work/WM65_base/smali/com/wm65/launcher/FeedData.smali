.class public final Lcom/wm65/launcher/FeedData;
.super Ljava/lang/Object;
.source "FeedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/FeedData$Cb;,
        Lcom/wm65/launcher/FeedData$Feed;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final POOL:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$sfgetMAIN()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/wm65/launcher/FeedData;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smfillPlaying(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Feed;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wm65/launcher/FeedData;->fillPlaying(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Feed;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wm65/launcher/FeedData;->POOL:Ljava/util/concurrent/ExecutorService;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wm65/launcher/FeedData;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Cb;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 41
    sget-object v0, Lcom/wm65/launcher/FeedData;->POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/wm65/launcher/FeedData$1;

    invoke-direct {v1, p0, p1}, Lcom/wm65/launcher/FeedData$1;-><init>(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Cb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static fillPlaying(Landroid/content/Context;Lcom/wm65/launcher/FeedData$Feed;)V
    .locals 4

    .line 62
    invoke-static {}, Lcom/wm65/launcher/NotifService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_1

    return-void

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/wm65/launcher/NotifService;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 70
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 75
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    return-void

    .line 84
    :cond_5
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 86
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 89
    :cond_6
    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_7
    const-string p0, ""

    if-nez v1, :cond_8

    move-object v1, p0

    :cond_8
    iput-object v1, p1, Lcom/wm65/launcher/FeedData$Feed;->playTitle:Ljava/lang/String;

    if-nez v2, :cond_9

    move-object v2, p0

    .line 92
    :cond_9
    iput-object v2, p1, Lcom/wm65/launcher/FeedData$Feed;->playArtist:Ljava/lang/String;

    .line 94
    :cond_a
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/wm65/launcher/FeedData$Feed;->playPkg:Ljava/lang/String;

    .line 95
    iget-object p0, p1, Lcom/wm65/launcher/FeedData$Feed;->playTitle:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Lcom/wm65/launcher/FeedData$Feed;->playing:Z

    :cond_b
    :goto_1
    return-void
.end method
