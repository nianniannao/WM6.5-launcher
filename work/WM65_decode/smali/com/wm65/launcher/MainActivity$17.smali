.class Lcom/wm65/launcher/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 821
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$17;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 824
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$17;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mconfigWeather(Lcom/wm65/launcher/MainActivity;)V

    const/4 p1, 0x1

    return p1
.end method
