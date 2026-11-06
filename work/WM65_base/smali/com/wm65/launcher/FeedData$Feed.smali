.class public Lcom/wm65/launcher/FeedData$Feed;
.super Ljava/lang/Object;
.source "FeedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/FeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feed"
.end annotation


# instance fields
.field public playArtist:Ljava/lang/String;

.field public playPkg:Ljava/lang/String;

.field public playTitle:Ljava/lang/String;

.field public playing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
