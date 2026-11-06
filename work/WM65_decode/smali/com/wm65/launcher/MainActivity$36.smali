.class Lcom/wm65/launcher/MainActivity$36;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->rowSizeDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$min:F

.field final synthetic val$step:F

.field final synthetic val$val:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;Landroid/widget/TextView;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2324
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$36;->this$0:Lcom/wm65/launcher/MainActivity;

    iput-object p2, p0, Lcom/wm65/launcher/MainActivity$36;->val$val:Landroid/widget/TextView;

    iput p3, p0, Lcom/wm65/launcher/MainActivity$36;->val$min:F

    iput p4, p0, Lcom/wm65/launcher/MainActivity$36;->val$step:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 2327
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$36;->val$val:Landroid/widget/TextView;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$36;->val$min:F

    int-to-float p2, p2

    iget v1, p0, Lcom/wm65/launcher/MainActivity$36;->val$step:F

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%.2f\u00d7"

    invoke-static {p3, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
