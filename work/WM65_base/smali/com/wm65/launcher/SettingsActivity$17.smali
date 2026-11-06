.class Lcom/wm65/launcher/SettingsActivity$17;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity;->widgetScaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/SettingsActivity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$sb:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity;Landroid/app/Dialog;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 484
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$17;->this$0:Lcom/wm65/launcher/SettingsActivity;

    iput-object p2, p0, Lcom/wm65/launcher/SettingsActivity$17;->val$d:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/wm65/launcher/SettingsActivity$17;->val$sb:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 487
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$17;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 488
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$17;->this$0:Lcom/wm65/launcher/SettingsActivity;

    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity$17;->val$sb:Landroid/widget/SeekBar;

    .line 489
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 488
    invoke-static {p1, v0}, Lcom/wm65/launcher/AppStore;->setWidgetScale(Landroid/content/Context;F)V

    .line 490
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$17;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f03008f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
