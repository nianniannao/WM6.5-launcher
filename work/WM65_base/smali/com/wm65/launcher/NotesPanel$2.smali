.class Lcom/wm65/launcher/NotesPanel$2;
.super Ljava/lang/Object;
.source "NotesPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/NotesPanel;->buildBar()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/NotesPanel;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/NotesPanel;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/wm65/launcher/NotesPanel$2;->this$0:Lcom/wm65/launcher/NotesPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/wm65/launcher/NotesPanel$2;->this$0:Lcom/wm65/launcher/NotesPanel;

    invoke-static {p1}, Lcom/wm65/launcher/NotesPanel;->-$$Nest$fgetmHost(Lcom/wm65/launcher/NotesPanel;)Lcom/wm65/launcher/NotesPanel$Host;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/wm65/launcher/NotesPanel$2;->this$0:Lcom/wm65/launcher/NotesPanel;

    invoke-static {p1}, Lcom/wm65/launcher/NotesPanel;->-$$Nest$fgetmHost(Lcom/wm65/launcher/NotesPanel;)Lcom/wm65/launcher/NotesPanel$Host;

    move-result-object p1

    invoke-interface {p1}, Lcom/wm65/launcher/NotesPanel$Host;->close()V

    :cond_0
    return-void
.end method
