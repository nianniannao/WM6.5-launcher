.class Lcom/wm65/launcher/NotesBoard$5;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->chip(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZFLcom/wm65/launcher/NotesBoard$Host;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$host:Lcom/wm65/launcher/NotesBoard$Host;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$5;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$5;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/wm65/launcher/NotesBoard$5;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$5;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$5;->val$value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/wm65/launcher/NoteStore;->setFilter(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$5;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-interface {p1}, Lcom/wm65/launcher/NotesBoard$Host;->onChanged()V

    return-void
.end method
