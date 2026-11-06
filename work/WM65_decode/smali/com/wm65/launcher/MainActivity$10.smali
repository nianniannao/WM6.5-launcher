.class Lcom/wm65/launcher/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->cornerKey(I)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$10;->this$0:Lcom/wm65/launcher/MainActivity;

    iput p2, p0, Lcom/wm65/launcher/MainActivity$10;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 451
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$10;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$10;->val$slot:I

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mlaunchCorner(Lcom/wm65/launcher/MainActivity;I)V

    return-void
.end method
