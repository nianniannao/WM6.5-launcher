.class Lcom/wm65/launcher/NotesBoard$7$1;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$TextHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard$7;->onItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/NotesBoard$7;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/NotesBoard$7;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$7$1;->this$0:Lcom/wm65/launcher/NotesBoard$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .locals 2

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$7$1;->this$0:Lcom/wm65/launcher/NotesBoard$7;

    iget-object v0, v0, Lcom/wm65/launcher/NotesBoard$7;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$7$1;->this$0:Lcom/wm65/launcher/NotesBoard$7;

    iget-object v1, v1, Lcom/wm65/launcher/NotesBoard$7;->val$tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/wm65/launcher/NoteStore;->renameTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$7$1;->this$0:Lcom/wm65/launcher/NotesBoard$7;

    iget-object p1, p1, Lcom/wm65/launcher/NotesBoard$7;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {p1}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    :cond_0
    return-void
.end method
