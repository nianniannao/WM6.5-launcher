.class Lcom/wm65/launcher/Ui$3;
.super Ljava/lang/Object;
.source "Ui.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$handler:Lcom/wm65/launcher/Ui$MenuHandler;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/wm65/launcher/Ui$MenuHandler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/wm65/launcher/Ui$3;->val$d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/wm65/launcher/Ui$3;->val$handler:Lcom/wm65/launcher/Ui$MenuHandler;

    iput p3, p0, Lcom/wm65/launcher/Ui$3;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/wm65/launcher/Ui$3;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 188
    iget-object p1, p0, Lcom/wm65/launcher/Ui$3;->val$handler:Lcom/wm65/launcher/Ui$MenuHandler;

    if-eqz p1, :cond_0

    .line 189
    iget v0, p0, Lcom/wm65/launcher/Ui$3;->val$idx:I

    invoke-interface {p1, v0}, Lcom/wm65/launcher/Ui$MenuHandler;->onItem(I)V

    :cond_0
    return-void
.end method
