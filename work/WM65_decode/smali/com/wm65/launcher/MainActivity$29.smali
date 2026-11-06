.class Lcom/wm65/launcher/MainActivity$29;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/NotesPanel$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->ensurePanel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$29;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$29;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mclosePanel(Lcom/wm65/launcher/MainActivity;)V

    return-void
.end method
