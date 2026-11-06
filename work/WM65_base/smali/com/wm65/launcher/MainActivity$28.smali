.class Lcom/wm65/launcher/MainActivity$28;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/DrawerPanel$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->ensurePanel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$28;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1681
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$28;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mclosePanel(Lcom/wm65/launcher/MainActivity;)V

    return-void
.end method

.method public onPluginsChanged()V
    .locals 2

    .line 1687
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$28;->this$0:Lcom/wm65/launcher/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mbuildPages(Lcom/wm65/launcher/MainActivity;Z)V

    return-void
.end method
