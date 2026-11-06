.class Lcom/wm65/launcher/NotesBoard$12;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$NoteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->newNote(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$host:Lcom/wm65/launcher/NotesBoard$Host;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$12;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$12;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 465
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$12;->val$a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/wm65/launcher/NoteStore;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 470
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$12;->val$a:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/wm65/launcher/NoteStore;->setFilter(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    :cond_1
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$12;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {p1}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    return-void
.end method
