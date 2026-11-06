.class Lcom/wm65/launcher/NotesPanel$1;
.super Ljava/lang/Object;
.source "NotesPanel.java"

# interfaces
.implements Lcom/wm65/launcher/NotesBoard$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/NotesPanel;
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

    .line 27
    iput-object p1, p0, Lcom/wm65/launcher/NotesPanel$1;->this$0:Lcom/wm65/launcher/NotesPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/wm65/launcher/NotesPanel$1;->this$0:Lcom/wm65/launcher/NotesPanel;

    invoke-virtual {v0}, Lcom/wm65/launcher/NotesPanel;->rebuild()V

    return-void
.end method
