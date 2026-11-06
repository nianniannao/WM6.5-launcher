.class Lcom/wm65/launcher/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->buildTodayPage()Landroid/view/View;
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

    .line 869
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$18;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 872
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$18;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmMusicPkg(Lcom/wm65/launcher/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mopenPkg(Lcom/wm65/launcher/MainActivity;Ljava/lang/String;)V

    return-void
.end method
