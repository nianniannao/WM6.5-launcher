.class Lcom/wm65/launcher/NotesBoard$7;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->manageTag(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$host:Lcom/wm65/launcher/NotesBoard$Host;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$7;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$7;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/wm65/launcher/NotesBoard$7;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$7;->val$a:Landroid/app/Activity;

    const v0, 0x7f03006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$7;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/wm65/launcher/NotesBoard$7;->val$a:Landroid/app/Activity;

    const v3, 0x7f03006f

    .line 293
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wm65/launcher/NotesBoard$7$1;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/NotesBoard$7$1;-><init>(Lcom/wm65/launcher/NotesBoard$7;)V

    .line 292
    invoke-static {p1, v0, v1, v2, v3}, Lcom/wm65/launcher/Ui;->inputDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$TextHandler;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 304
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$7;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$7;->val$tag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/wm65/launcher/NoteStore;->removeTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$7;->val$a:Landroid/app/Activity;

    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 307
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$7;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {p1}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    :cond_1
    :goto_0
    return-void
.end method
