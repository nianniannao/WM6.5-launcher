.class Lcom/wm65/launcher/NotesBoard$1;
.super Ljava/lang/Object;
.source "NotesBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesBoard;->build(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/wm65/launcher/NotesBoard$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/wm65/launcher/NotesBoard$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/wm65/launcher/NotesBoard;->openApp(Landroid/app/Activity;)V

    return-void
.end method
