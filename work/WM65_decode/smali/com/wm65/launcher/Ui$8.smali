.class Lcom/wm65/launcher/Ui$8;
.super Ljava/lang/Object;
.source "Ui.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/Ui;->inputDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$TextHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$handler:Lcom/wm65/launcher/Ui$TextHandler;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/wm65/launcher/Ui$TextHandler;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lcom/wm65/launcher/Ui$8;->val$d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/wm65/launcher/Ui$8;->val$handler:Lcom/wm65/launcher/Ui$TextHandler;

    iput-object p3, p0, Lcom/wm65/launcher/Ui$8;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 491
    iget-object p1, p0, Lcom/wm65/launcher/Ui$8;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 492
    iget-object p1, p0, Lcom/wm65/launcher/Ui$8;->val$handler:Lcom/wm65/launcher/Ui$TextHandler;

    if-eqz p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/wm65/launcher/Ui$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/wm65/launcher/Ui$TextHandler;->onText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
