.class Lcom/wm65/launcher/NotesBoard$8;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 365
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$8;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$8;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iput-object p3, p0, Lcom/wm65/launcher/NotesBoard$8;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 368
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$8;->val$a:Landroid/app/Activity;

    const v0, 0x7f03004d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$8;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iget-object v1, v1, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/wm65/launcher/NotesBoard$8;->val$n:Lcom/wm65/launcher/NoteStore$Note;

    iget-object v2, v2, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    new-instance v3, Lcom/wm65/launcher/NotesBoard$8$1;

    invoke-direct {v3, p0}, Lcom/wm65/launcher/NotesBoard$8$1;-><init>(Lcom/wm65/launcher/NotesBoard$8;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/wm65/launcher/Ui;->noteDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$NoteHandler;)V

    return-void
.end method
