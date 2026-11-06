.class Lcom/wm65/launcher/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$InsetsSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 210
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$5;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsets(II)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$5;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0, p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmInsetTop(Lcom/wm65/launcher/MainActivity;I)V

    .line 214
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$5;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1, p2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmInsetBottom(Lcom/wm65/launcher/MainActivity;I)V

    .line 215
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$5;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mapplyPanelInsets(Lcom/wm65/launcher/MainActivity;)V

    return-void
.end method
