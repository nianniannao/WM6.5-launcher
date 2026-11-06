.class Lcom/wm65/launcher/Ui$10;
.super Ljava/lang/Object;
.source "Ui.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/Ui;->noteDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$NoteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Landroid/widget/EditText;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$handler:Lcom/wm65/launcher/Ui$NoteHandler;

.field final synthetic val$tag:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/wm65/launcher/Ui$NoteHandler;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 565
    iput-object p1, p0, Lcom/wm65/launcher/Ui$10;->val$d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/wm65/launcher/Ui$10;->val$handler:Lcom/wm65/launcher/Ui$NoteHandler;

    iput-object p3, p0, Lcom/wm65/launcher/Ui$10;->val$body:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/wm65/launcher/Ui$10;->val$tag:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 568
    iget-object p1, p0, Lcom/wm65/launcher/Ui$10;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 569
    iget-object p1, p0, Lcom/wm65/launcher/Ui$10;->val$handler:Lcom/wm65/launcher/Ui$NoteHandler;

    if-eqz p1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/wm65/launcher/Ui$10;->val$body:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wm65/launcher/Ui$10;->val$tag:Landroid/widget/EditText;

    .line 571
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-interface {p1, v0, v1}, Lcom/wm65/launcher/Ui$NoteHandler;->onNote(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
