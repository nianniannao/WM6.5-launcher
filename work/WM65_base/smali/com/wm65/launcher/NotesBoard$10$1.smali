.class Lcom/wm65/launcher/NotesBoard$10$1;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$NoteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard$10;->onItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/NotesBoard$10;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/NotesBoard$10;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$10$1;->this$0:Lcom/wm65/launcher/NotesBoard$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$10$1;->this$0:Lcom/wm65/launcher/NotesBoard$10;

    iget-object v0, v0, Lcom/wm65/launcher/NotesBoard$10;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$10$1;->this$0:Lcom/wm65/launcher/NotesBoard$10;

    iget-object v1, v1, Lcom/wm65/launcher/NotesBoard$10;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iget-wide v1, v1, Lcom/wm65/launcher/NoteStore$Note;->id:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/wm65/launcher/NoteStore;->update(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$10$1;->this$0:Lcom/wm65/launcher/NotesBoard$10;

    iget-object p1, p1, Lcom/wm65/launcher/NotesBoard$10;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {p1}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    :cond_0
    return-void
.end method
