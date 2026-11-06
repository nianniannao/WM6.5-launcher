.class Lcom/wm65/launcher/AppPickerActivity$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/AppPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/AppPickerActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/AppPickerActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/wm65/launcher/AppPickerActivity$1;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/wm65/launcher/AppPickerActivity$1;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/AppPickerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wm65/launcher/AppPickerActivity$1;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-virtual {v0}, Lcom/wm65/launcher/AppPickerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/wm65/launcher/AppPickerActivity$1;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-static {v0}, Lcom/wm65/launcher/AppPickerActivity;->-$$Nest$mfillList(Lcom/wm65/launcher/AppPickerActivity;)V

    :cond_0
    return-void
.end method
