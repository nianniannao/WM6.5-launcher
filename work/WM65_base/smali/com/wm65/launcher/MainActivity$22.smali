.class Lcom/wm65/launcher/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->attachWidgetDrag(Landroid/view/View;)V
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

    .line 1223
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1226
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmWidgetMoveMode(Lcom/wm65/launcher/MainActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1229
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    return v1

    .line 1236
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmDragLastX(Lcom/wm65/launcher/MainActivity;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 1237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v2, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmDragLastY(Lcom/wm65/launcher/MainActivity;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 1238
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 1239
    :cond_2
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v2, v1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmDragMoved(Lcom/wm65/launcher/MainActivity;Z)V

    .line 1241
    :cond_3
    iget-object v2, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {v2, p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$mmoveWidgetsBy(Lcom/wm65/launcher/MainActivity;FF)V

    .line 1242
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmDragLastX(Lcom/wm65/launcher/MainActivity;F)V

    .line 1243
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmDragLastY(Lcom/wm65/launcher/MainActivity;F)V

    return v1

    .line 1248
    :cond_4
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fgetmDragMoved(Lcom/wm65/launcher/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1249
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/MainActivity;->-$$Nest$msaveWidgetOffset(Lcom/wm65/launcher/MainActivity;)V

    .line 1250
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmWidgetMoveMode(Lcom/wm65/launcher/MainActivity;Z)V

    .line 1253
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    const p2, 0x7f030088

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1254
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1256
    :cond_5
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmWidgetMoveMode(Lcom/wm65/launcher/MainActivity;Z)V

    .line 1257
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    const p2, 0x7f030086

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1258
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1

    .line 1231
    :cond_6
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {p1, v2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmDragLastX(Lcom/wm65/launcher/MainActivity;F)V

    .line 1232
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmDragLastY(Lcom/wm65/launcher/MainActivity;F)V

    .line 1233
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$22;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1, v0}, Lcom/wm65/launcher/MainActivity;->-$$Nest$fputmDragMoved(Lcom/wm65/launcher/MainActivity;Z)V

    return v1
.end method
