.class Lcom/wm65/launcher/NotesBoard$9;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->noteRow(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;FLcom/wm65/launcher/NotesBoard$Host;)Landroid/view/View;
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

    .line 380
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$9;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$9;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iput-object p3, p0, Lcom/wm65/launcher/NotesBoard$9;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 383
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$9;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$9;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$9;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-static {p1, v0, v1}, Lcom/wm65/launcher/NotesBoard;->-$$Nest$smshowNoteMenu(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V

    const/4 p1, 0x1

    return p1
.end method
