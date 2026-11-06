.class Lcom/wm65/launcher/NotesBoard$10;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->showNoteMenu(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$host:Lcom/wm65/launcher/NotesBoard$Host;

.field final synthetic val$n:Lcom/wm65/launcher/NoteStore$Note;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$10;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$10;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iput-object p3, p0, Lcom/wm65/launcher/NotesBoard$10;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$10;->val$a:Landroid/app/Activity;

    const v0, 0x7f03004d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$10;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iget-object v1, v1, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/wm65/launcher/NotesBoard$10;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iget-object v2, v2, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    new-instance v3, Lcom/wm65/launcher/NotesBoard$10$1;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/NotesBoard$10$1;-><init>(Lcom/wm65/launcher/NotesBoard$10;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/wm65/launcher/Ui;->noteDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$NoteHandler;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 414
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$10;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$10;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iget-wide v0, v0, Lcom/wm65/launcher/NoteStore$Note;->id:J

    invoke-static {p1, v0, v1}, Lcom/wm65/launcher/NoteStore;->remove(Landroid/content/Context;J)V

    .line 415
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$10;->val$a:Landroid/app/Activity;

    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 417
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$10;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {p1}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 419
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$10;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/wm65/launcher/NotesBoard;->openApp(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method
