.class Lcom/wm65/launcher/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->addMsgRow(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$kind:I


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1090
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$21;->this$0:Lcom/wm65/launcher/MainActivity;

    iput p2, p0, Lcom/wm65/launcher/MainActivity$21;->val$kind:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1093
    iget p1, p0, Lcom/wm65/launcher/MainActivity$21;->val$kind:I

    if-nez p1, :cond_0

    .line 1094
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$21;->this$0:Lcom/wm65/launcher/MainActivity;

    const-string v0, "com.tencent.mm"

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mopenPkg(Lcom/wm65/launcher/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1096
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$21;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mopenSmsApp(Lcom/wm65/launcher/MainActivity;)V

    goto :goto_0

    .line 1098
    :cond_1
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$21;->this$0:Lcom/wm65/launcher/MainActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method
