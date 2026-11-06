.class public Lcom/wm65/launcher/WeatherHelper$Weather;
.super Ljava/lang/Object;
.source "WeatherHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/WeatherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weather"
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public final days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wm65/launcher/WeatherHelper$Day;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public emoji:Ljava/lang/String;

.field public temp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wm65/launcher/WeatherHelper$Weather;->days:Ljava/util/List;

    return-void
.end method
