.class Lcom/wm65/launcher/NotesBoard$6;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$6;->val$value:Ljava/lang/String;

    iput-object p2, p0, Lcom/wm65/launcher/NotesBoard$6;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/wm65/launcher/NotesBoard$6;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$6;->val$value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$6;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/wm65/launcher/NotesBoard$6;->val$value:Ljava/lang/String;

    iget-object v1, p0, Lcom/wm65/launcher/NotesBoard$6;->val$host:Lcom/wm65/launcher/NotesBoard$Host;

    invoke-static {p1, v0, v1}, Lcom/wm65/launcher/NotesBoard;->-$$Nest$smmanageTag(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
