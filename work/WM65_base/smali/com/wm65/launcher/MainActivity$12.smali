.class Lcom/wm65/launcher/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->configCorner(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$cur:[Ljava/lang/String;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    iput p2, p0, Lcom/wm65/launcher/MainActivity$12;->val$slot:I

    iput-object p3, p0, Lcom/wm65/launcher/MainActivity$12;->val$cur:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 506
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    const-class v2, Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/wm65/launcher/MainActivity$12;->val$slot:I

    add-int/lit8 v1, v1, 0x46

    invoke-virtual {p1, v0, v1}, Lcom/wm65/launcher/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 509
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 511
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    const v0, 0x7f03005b

    .line 512
    invoke-virtual {p1, v0}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity$12;->val$cur:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    const v3, 0x7f030026

    .line 513
    invoke-virtual {v2, v3}, Lcom/wm65/launcher/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wm65/launcher/MainActivity$12$1;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/MainActivity$12$1;-><init>(Lcom/wm65/launcher/MainActivity$12;)V

    .line 511
    invoke-static {p1, v0, v1, v2, v3}, Lcom/wm65/launcher/Ui;->inputDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$TextHandler;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 525
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$12;->val$slot:I

    invoke-static {p1, v0}, Lcom/wm65/launcher/AppStore;->resetCorner(Landroid/content/Context;I)V

    .line 526
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$12;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mapplyCorners(Lcom/wm65/launcher/MainActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
