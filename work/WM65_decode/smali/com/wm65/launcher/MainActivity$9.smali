.class Lcom/wm65/launcher/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->buildBottomBar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$logo:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$9;->this$0:Lcom/wm65/launcher/MainActivity;

    iput-object p2, p0, Lcom/wm65/launcher/MainActivity$9;->val$logo:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 339
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$9;->this$0:Lcom/wm65/launcher/MainActivity;

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$9;->val$logo:Landroid/widget/ImageView;

    const-string v1, "logo_bottom"

    const/16 v2, 0x52

    invoke-static {p1, v0, v1, v2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mconfigLogo(Lcom/wm65/launcher/MainActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method
