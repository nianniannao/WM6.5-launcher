.class public Lcom/wm65/launcher/PanelPager;
.super Landroid/view/ViewGroup;
.source "PanelPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/PanelPager$Listener;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_MS:I = 0xc8

.field private static final MIN_FLING_VELOCITY:I = 0x12c


# instance fields
.field private mCurrentPage:I

.field private mDownY:F

.field private mDragging:Z

.field private final mGesture:Landroid/view/GestureDetector;

.field private mLastY:F

.field private final mListener:Lcom/wm65/launcher/PanelPager$Listener;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private final mTouchSlop:I

.field private mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragging(Lcom/wm65/launcher/PanelPager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wm65/launcher/PanelPager$Listener;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/wm65/launcher/PanelPager;->mCurrentPage:I

    .line 50
    new-instance v0, Landroid/widget/OverScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fb33333    # 1.4f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/wm65/launcher/PanelPager;->mScroller:Landroid/widget/OverScroller;

    .line 51
    iput-object p2, p0, Lcom/wm65/launcher/PanelPager;->mListener:Lcom/wm65/launcher/PanelPager$Listener;

    .line 52
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/PanelPager;->mTouchSlop:I

    .line 53
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/wm65/launcher/PanelPager$1;

    invoke-direct {v1, p0, p2}, Lcom/wm65/launcher/PanelPager$1;-><init>(Lcom/wm65/launcher/PanelPager;Lcom/wm65/launcher/PanelPager$Listener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wm65/launcher/PanelPager;->mGesture:Landroid/view/GestureDetector;

    return-void
.end method

.method private animateOffset(F)V
    .locals 4

    const/4 v0, 0x0

    .line 217
    :goto_0
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/PanelPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fcccccd    # 1.6f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 219
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clampScroll(I)I
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/wm65/launcher/PanelPager;->maxScroll()I

    move-result v0

    .line 182
    invoke-direct {p0}, Lcom/wm65/launcher/PanelPager;->pageHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    neg-int v2, v1

    if-ge p1, v2, :cond_0

    return v2

    :cond_0
    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private maxScroll()I
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0}, Lcom/wm65/launcher/PanelPager;->pageHeight()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private pageHeight()I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getHeight()I

    move-result v0

    return v0
.end method

.method private setLayer(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 249
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/PanelPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-eq v2, p1, :cond_1

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setOffset(F)V
    .locals 2

    const/4 v0, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/PanelPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/wm65/launcher/PanelPager;->scrollTo(II)V

    .line 236
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/wm65/launcher/PanelPager;->mScrolling:Z

    if-eqz v0, :cond_1

    .line 238
    iput-boolean v1, p0, Lcom/wm65/launcher/PanelPager;->mScrolling:Z

    .line 239
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 240
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/wm65/launcher/PanelPager;->pageHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 239
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/wm65/launcher/PanelPager;->mCurrentPage:I

    .line 241
    invoke-direct {p0, v1}, Lcom/wm65/launcher/PanelPager;->setLayer(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/wm65/launcher/PanelPager;->mCurrentPage:I

    return v0
.end method

.method public isBusy()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/wm65/launcher/PanelPager;->mScrolling:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wm65/launcher/PanelPager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    move p2, p1

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 110
    invoke-virtual {p0, p2}, Lcom/wm65/launcher/PanelPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    mul-int p4, p2, p5

    .line 111
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v1, p4, p5

    invoke-virtual {p3, p1, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget p2, p0, Lcom/wm65/launcher/PanelPager;->mCurrentPage:I

    mul-int/2addr p2, p5

    invoke-virtual {p0, p1, p2}, Lcom/wm65/launcher/PanelPager;->scrollTo(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/wm65/launcher/PanelPager;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 102
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 103
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/wm65/launcher/PanelPager;->measureChildren(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 126
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager;->mVelocity:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/wm65/launcher/PanelPager;->mVelocity:Landroid/view/VelocityTracker;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/wm65/launcher/PanelPager;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_1

    .line 144
    :cond_1
    iget-boolean p1, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/wm65/launcher/PanelPager;->mDownY:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v3, p0, Lcom/wm65/launcher/PanelPager;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    .line 145
    iput-boolean v2, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    .line 146
    invoke-direct {p0, v2}, Lcom/wm65/launcher/PanelPager;->setLayer(Z)V

    .line 147
    iput v0, p0, Lcom/wm65/launcher/PanelPager;->mLastY:F

    .line 149
    :cond_2
    iget-boolean p1, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    if-eqz p1, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getScrollY()I

    move-result p1

    iget v3, p0, Lcom/wm65/launcher/PanelPager;->mLastY:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/wm65/launcher/PanelPager;->clampScroll(I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/wm65/launcher/PanelPager;->scrollTo(II)V

    .line 152
    :cond_3
    iput v0, p0, Lcom/wm65/launcher/PanelPager;->mLastY:F

    goto :goto_1

    .line 157
    :cond_4
    iget-boolean p1, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    if-eqz p1, :cond_8

    .line 158
    iget-object p1, p0, Lcom/wm65/launcher/PanelPager;->mVelocity:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    const/high16 v3, 0x45fa0000    # 8000.0f

    invoke-virtual {p1, v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 159
    iget-object p1, p0, Lcom/wm65/launcher/PanelPager;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 160
    invoke-direct {p0}, Lcom/wm65/launcher/PanelPager;->pageHeight()I

    move-result v0

    .line 161
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getScrollY()I

    move-result v3

    .line 162
    div-int v4, v3, v0

    .line 164
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43960000    # 300.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    const/4 v5, 0x0

    cmpg-float p1, p1, v5

    if-gez p1, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    :cond_5
    rem-int/2addr v3, v0

    if-nez v3, :cond_7

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_6
    int-to-float p1, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 168
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 170
    :cond_7
    :goto_0
    invoke-virtual {p0, v4}, Lcom/wm65/launcher/PanelPager;->smoothToPage(I)V

    .line 172
    :cond_8
    iget-object p1, p0, Lcom/wm65/launcher/PanelPager;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/wm65/launcher/PanelPager;->mVelocity:Landroid/view/VelocityTracker;

    .line 174
    iput-boolean v1, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    goto :goto_1

    .line 134
    :cond_9
    iget-object p1, p0, Lcom/wm65/launcher/PanelPager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    .line 135
    iget-object p1, p0, Lcom/wm65/launcher/PanelPager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 136
    iput-boolean v1, p0, Lcom/wm65/launcher/PanelPager;->mScrolling:Z

    .line 138
    :cond_a
    iput v0, p0, Lcom/wm65/launcher/PanelPager;->mDownY:F

    .line 139
    iput v0, p0, Lcom/wm65/launcher/PanelPager;->mLastY:F

    .line 140
    iput-boolean v1, p0, Lcom/wm65/launcher/PanelPager;->mDragging:Z

    :goto_1
    return v2
.end method

.method public resetOffsets()V
    .locals 3

    const/4 v0, 0x0

    .line 225
    :goto_0
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/wm65/launcher/PanelPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public smoothToPage(I)V
    .locals 8

    .line 193
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 194
    invoke-direct {p0, v1}, Lcom/wm65/launcher/PanelPager;->setLayer(Z)V

    .line 195
    iput p1, p0, Lcom/wm65/launcher/PanelPager;->mCurrentPage:I

    .line 196
    iget-object v2, p0, Lcom/wm65/launcher/PanelPager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getScrollY()I

    move-result v4

    invoke-direct {p0}, Lcom/wm65/launcher/PanelPager;->pageHeight()I

    move-result v0

    mul-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getScrollY()I

    move-result v0

    sub-int v6, p1, v0

    const/16 v7, 0xc8

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 198
    iput-boolean v1, p0, Lcom/wm65/launcher/PanelPager;->mScrolling:Z

    .line 199
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->postInvalidateOnAnimation()V

    return-void
.end method

.method public snapToPage(I)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/wm65/launcher/PanelPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 205
    iput p1, p0, Lcom/wm65/launcher/PanelPager;->mCurrentPage:I

    .line 206
    invoke-direct {p0}, Lcom/wm65/launcher/PanelPager;->pageHeight()I

    move-result v1

    mul-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/wm65/launcher/PanelPager;->scrollTo(II)V

    return-void
.end method
