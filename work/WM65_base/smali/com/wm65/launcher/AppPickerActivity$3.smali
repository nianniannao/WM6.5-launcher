.class Lcom/wm65/launcher/AppPickerActivity$3;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/AppPickerActivity;->fillList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/AppPickerActivity;

.field final synthetic val$apps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/AppPickerActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/wm65/launcher/AppPickerActivity$3;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    iput-object p2, p0, Lcom/wm65/launcher/AppPickerActivity$3;->val$apps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 132
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 133
    iget-object p2, p0, Lcom/wm65/launcher/AppPickerActivity$3;->val$apps:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wm65/launcher/AppStore$AppInfo;

    invoke-virtual {p2}, Lcom/wm65/launcher/AppStore$AppInfo;->key()Ljava/lang/String;

    move-result-object p2

    const-string p3, "key"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object p2, p0, Lcom/wm65/launcher/AppPickerActivity$3;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/wm65/launcher/AppPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object p1, p0, Lcom/wm65/launcher/AppPickerActivity$3;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-virtual {p1}, Lcom/wm65/launcher/AppPickerActivity;->finish()V

    .line 136
    iget-object p1, p0, Lcom/wm65/launcher/AppPickerActivity$3;->this$0:Lcom/wm65/launcher/AppPickerActivity;

    invoke-static {p1}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    return-void
.end method
