.class public Lcom/wm65/launcher/AppStore$AppInfo;
.super Ljava/lang/Object;
.source "AppStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/AppStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public final cls:Ljava/lang/String;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final label:Ljava/lang/String;

.field public final pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/wm65/launcher/AppStore$AppInfo;->pkg:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/wm65/launcher/AppStore$AppInfo;->cls:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 38
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/wm65/launcher/AppStore$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/wm65/launcher/AppStore$AppInfo;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/wm65/launcher/AppStore$AppInfo;->cls:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public launchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/wm65/launcher/AppStore$AppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/wm65/launcher/AppStore$AppInfo;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/wm65/launcher/AppStore$AppInfo;->cls:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x10200000

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p1
.end method
