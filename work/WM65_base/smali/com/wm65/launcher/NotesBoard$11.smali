.class Lcom/wm65/launcher/NotesBoard$11;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->showConfig(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V
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

    .line 433
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$11;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$11;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$11;->val$a:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$11;->val$a:Landroid/app/Activity;

    const-class v2, Lcom/wm65/launcher/AppPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 439
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$11;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 441
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$11;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$11;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-static {p1, v0}, Lcom/wm65/launcher/NotesBoard;->newNote(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 443
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$11;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/wm65/launcher/NoteStore;->resetApp(Landroid/content/Context;)V

    .line 444
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$11;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {p1}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    :cond_2
    :goto_0
    return-void
.end method
