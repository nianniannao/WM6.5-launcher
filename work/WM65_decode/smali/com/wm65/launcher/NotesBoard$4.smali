.class Lcom/wm65/launcher/NotesBoard$4;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->build(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Lcom/wm65/launcher/NotesBoard$Host;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$4;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$4;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {v0}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    return-void
.end method
