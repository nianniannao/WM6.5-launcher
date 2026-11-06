.class Lcom/wm65/launcher/MainActivity$12$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$TextHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity$12;->onItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wm65/launcher/MainActivity$12;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity$12;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$12$1;->this$1:Lcom/wm65/launcher/MainActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .locals 4

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$12$1;->this$1:Lcom/wm65/launcher/MainActivity$12;

    iget-object v0, v0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity$12$1;->this$1:Lcom/wm65/launcher/MainActivity$12;

    iget v1, v1, Lcom/wm65/launcher/MainActivity$12;->val$slot:I

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity$12$1;->this$1:Lcom/wm65/launcher/MainActivity$12;

    iget-object v2, v2, Lcom/wm65/launcher/MainActivity$12;->val$cur:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/wm65/launcher/AppStore;->setCorner(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$12$1;->this$1:Lcom/wm65/launcher/MainActivity$12;

    iget-object p1, p1, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mapplyCorners(Lcom/wm65/launcher/MainActivity;)V

    :cond_0
    return-void
.end method
