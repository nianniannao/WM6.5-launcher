.class Lcom/wm65/launcher/AppStore$2;
.super Ljava/lang/Object;
.source "AppStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/AppStore;->scanApps(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/wm65/launcher/AppStore$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$coll:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/wm65/launcher/AppStore$2;->val$coll:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/wm65/launcher/AppStore$AppInfo;Lcom/wm65/launcher/AppStore$AppInfo;)I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/wm65/launcher/AppStore$2;->val$coll:Ljava/text/Collator;

    iget-object p1, p1, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 174
    check-cast p1, Lcom/wm65/launcher/AppStore$AppInfo;

    check-cast p2, Lcom/wm65/launcher/AppStore$AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/wm65/launcher/AppStore$2;->compare(Lcom/wm65/launcher/AppStore$AppInfo;Lcom/wm65/launcher/AppStore$AppInfo;)I

    move-result p1

    return p1
.end method
