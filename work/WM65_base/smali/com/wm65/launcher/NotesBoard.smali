.class public final Lcom/wm65/launcher/NotesBoard;
.super Ljava/lang/Object;
.source "NotesBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/NotesBoard$Host;
    }
.end annotation


# static fields
.field public static final REQ_PICK_APP:I = 0x5a


# direct methods
.method static bridge synthetic -$$Nest$smmanageTag(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wm65/launcher/NotesBoard;->manageTag(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smshowNoteMenu(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wm65/launcher/NotesBoard;->showNoteMenu(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPickedApp(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    invoke-static {p0, p1}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, v0, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/wm65/launcher/NoteStore;->pkgOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/wm65/launcher/NoteStore;->setAppManual(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static build(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)Landroid/view/View;
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 48
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    .line 49
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v1, v8, v0

    float-to-int v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v8

    float-to-int v11, v2

    .line 51
    invoke-virtual {v9, v1, v11, v1, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    invoke-static/range {p0 .. p0}, Lcom/wm65/launcher/NoteStore;->app(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    aget-object v2, v1, v10

    invoke-static {v6, v2}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v2

    const/4 v12, 0x0

    if-nez v2, :cond_1

    .line 56
    aget-object v3, v1, v10

    invoke-static {v6, v3}, Lcom/wm65/launcher/NotesBoard;->isInstalled(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v12

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v10

    :goto_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    .line 58
    aget-object v2, v1, v10

    invoke-static {v2}, Lcom/wm65/launcher/NoteStore;->pkgOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/wm65/launcher/NotesBoard;->loadIconDirect(Landroid/app/Activity;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v2

    .line 61
    :cond_2
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 63
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v13, 0x41e00000    # 28.0f

    mul-float/2addr v13, v8

    float-to-int v13, v13

    const/16 v14, 0x11

    if-eqz v2, :cond_3

    .line 66
    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    iget-object v5, v2, Lcom/wm65/launcher/AppStore$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 70
    :cond_3
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    const-string v15, "\ud83d\udcdd"

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41980000    # 19.0f

    .line 72
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :goto_2
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_4

    .line 77
    iget-object v1, v2, Lcom/wm65/launcher/AppStore$AppInfo;->label:Ljava/lang/String;

    goto :goto_3

    :cond_4
    aget-object v1, v1, v12

    :goto_3
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, -0x1

    .line 78
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v14, -0x67000000

    .line 81
    invoke-virtual {v5, v2, v1, v0, v14}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 82
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 83
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v10, v12, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 86
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 87
    invoke-virtual {v4, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_5

    const v10, 0x7f030048

    goto :goto_4

    :cond_5
    const v10, 0x7f030046

    .line 90
    :goto_4
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    if-eqz v3, :cond_6

    const v3, -0x33000001    # -1.3421772E8f

    goto :goto_5

    :cond_6
    const v3, -0x702f01

    .line 91
    :goto_5
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41400000    # 12.0f

    .line 92
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    sget-object v3, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 94
    invoke-virtual {v5, v2, v1, v3, v14}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-static {v4}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 98
    new-instance v0, Lcom/wm65/launcher/NotesBoard$1;

    invoke-direct {v0, v6}, Lcom/wm65/launcher/NotesBoard$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v0, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41600000    # 14.0f

    mul-float v1, v8, v5

    float-to-int v1, v1

    .line 106
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 107
    invoke-virtual {v9, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-static/range {p0 .. p0}, Lcom/wm65/launcher/NoteStore;->tags(Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    .line 111
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 112
    invoke-static/range {p0 .. p0}, Lcom/wm65/launcher/NoteStore;->filter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v1, v12}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 115
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 117
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v2, 0x7f03004b

    .line 118
    invoke-virtual {v6, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v18, ""

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v12, v1

    move-object v1, v2

    move-object/from16 v2, v18

    move-object v10, v4

    move v4, v8

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/wm65/launcher/NotesBoard;->chip(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZFLcom/wm65/launcher/NotesBoard$Host;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v2

    move v4, v8

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/wm65/launcher/NotesBoard;->chip(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZFLcom/wm65/launcher/NotesBoard$Host;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 123
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v14, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v10, v8, v1

    float-to-int v1, v10

    .line 127
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 128
    invoke-virtual {v9, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :cond_8
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    invoke-static/range {p0 .. p0}, Lcom/wm65/launcher/NoteStore;->visible(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 138
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f030044

    .line 139
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, -0x66000001

    .line 140
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 141
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    sget-object v3, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v3, 0x11

    .line 143
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, -0x67000000

    const/4 v10, 0x0

    .line 144
    invoke-virtual {v2, v4, v10, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v5, v13, v5, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 146
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v5, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    move v14, v12

    goto :goto_8

    :cond_a
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 149
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wm65/launcher/NoteStore$Note;

    .line 150
    invoke-static {v6, v5, v8, v7}, Lcom/wm65/launcher/NotesBoard;->noteRow(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;FLcom/wm65/launcher/NotesBoard$Host;)Landroid/view/View;

    move-result-object v5

    .line 151
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v13, 0x2affffff

    .line 156
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 157
    invoke-virtual {v5, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v13, v8

    const/4 v14, 0x1

    .line 159
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, -0x1

    invoke-direct {v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    invoke-virtual {v1, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v12, v14

    goto :goto_7

    .line 163
    :goto_8
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v1, v14, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030047

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 173
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x16

    const v5, 0x40ffffff    # 7.9999995f

    .line 175
    invoke-static {v8, v1, v5}, Lcom/wm65/launcher/Ui;->cardBg(FII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, -0x67000000

    .line 176
    invoke-virtual {v0, v4, v10, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 177
    invoke-static {v0}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 178
    new-instance v1, Lcom/wm65/launcher/NotesBoard$2;

    invoke-direct {v1, v6, v7}, Lcom/wm65/launcher/NotesBoard$2;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42380000    # 46.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v8, v3

    float-to-int v3, v8

    .line 186
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 187
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030045

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, -0x75000001

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 193
    sget-object v1, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v3, -0x67000000

    .line 195
    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 196
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 199
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v0, Lcom/wm65/launcher/NotesBoard$3;

    invoke-direct {v0, v6, v7}, Lcom/wm65/launcher/NotesBoard$3;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    invoke-static {}, Lcom/wm65/launcher/AppStore;->isReady()Z

    move-result v0

    if-nez v0, :cond_b

    .line 211
    new-instance v0, Lcom/wm65/launcher/NotesBoard$4;

    invoke-direct {v0, v7}, Lcom/wm65/launcher/NotesBoard$4;-><init>(Lcom/wm65/launcher/NotesBoard$Host;)V

    invoke-static {v6, v0}, Lcom/wm65/launcher/AppStore;->warmUp(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_b
    return-object v9
.end method

.method private static chip(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZFLcom/wm65/launcher/NotesBoard$Host;)Landroid/widget/TextView;
    .locals 2

    .line 242
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const p1, -0x33000001    # -1.3421772E8f

    .line 244
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 246
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    mul-float/2addr p1, p4

    float-to-int p1, p1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p4

    float-to-int v1, v1

    .line 251
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz p3, :cond_1

    const p3, -0x33d9ac86    # -4.3601384E7f

    goto :goto_1

    :cond_1
    const p3, 0x1fffffff

    .line 253
    :goto_1
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p3, 0x41600000    # 14.0f

    mul-float/2addr p3, p4

    .line 254
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-static {v0}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 257
    new-instance p1, Lcom/wm65/launcher/NotesBoard$5;

    invoke-direct {p1, p0, p2, p5}, Lcom/wm65/launcher/NotesBoard$5;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance p1, Lcom/wm65/launcher/NotesBoard$6;

    invoke-direct {p1, p2, p0, p5}, Lcom/wm65/launcher/NotesBoard$6;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 274
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x41000000    # 8.0f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    .line 276
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 277
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static isInstalled(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 223
    invoke-static {p0, p1}, Lcom/wm65/launcher/NoteStore;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static loadIconDirect(Landroid/app/Activity;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;
    .locals 2

    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 233
    new-instance v0, Lcom/wm65/launcher/AppStore$AppInfo;

    invoke-direct {v0, p1, p1, p0, v1}, Lcom/wm65/launcher/AppStore$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static manageTag(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 3

    const/4 v0, 0x3

    .line 283
    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f03006e

    .line 285
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f03006d

    .line 286
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f030031

    .line 287
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/wm65/launcher/NotesBoard$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/wm65/launcher/NotesBoard$7;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/wm65/launcher/NotesBoard$Host;)V

    .line 283
    invoke-static {p0, p1, v0, v1}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method public static newNote(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 3

    const v0, 0x7f03004e

    .line 461
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->filter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/wm65/launcher/NotesBoard$12;

    invoke-direct {v2, p0, p1}, Lcom/wm65/launcher/NotesBoard$12;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V

    .line 461
    const-string p1, ""

    invoke-static {p0, v0, p1, v1, v2}, Lcom/wm65/launcher/Ui;->noteDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wm65/launcher/Ui$NoteHandler;)V

    return-void
.end method

.method private static noteRow(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;FLcom/wm65/launcher/NotesBoard$Host;)Landroid/view/View;
    .locals 11

    .line 316
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 318
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, p2, v2

    float-to-int v3, v3

    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v4, p2

    float-to-int v4, v4

    .line 321
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 323
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 324
    iget-object v5, p1, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f03004f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p1, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x150d01

    .line 325
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41300000    # 11.0f

    .line 326
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 327
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x11

    .line 328
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x1

    .line 329
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v7, 0x42900000    # 72.0f

    mul-float/2addr v7, p2

    float-to-int v7, v7

    .line 330
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v7, p2

    float-to-int v7, v7

    .line 331
    invoke-virtual {v4, v7, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 332
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v8, 0x33ffffff

    .line 333
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr p2, v8

    .line 334
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 335
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 340
    iget-object v4, p1, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 341
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41880000    # 17.0f

    .line 342
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 343
    sget-object v4, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 345
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, -0x67000000

    const/4 v9, 0x0

    .line 346
    invoke-virtual {v3, v2, v9, v4, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 347
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    float-to-int p2, p2

    .line 349
    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 350
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    .line 354
    iget-wide v3, p1, Lcom/wm65/launcher/NoteStore$Note;->ts:J

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-lez v3, :cond_1

    iget-wide v3, p1, Lcom/wm65/launcher/NoteStore$Note;->ts:J

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_1
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x66000001

    .line 355
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 357
    sget-object v1, Lcom/wm65/launcher/Ui;->LIGHT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 358
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 361
    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-static {v0}, Lcom/wm65/launcher/Ui;->pressFx(Landroid/view/View;)V

    .line 365
    new-instance p2, Lcom/wm65/launcher/NotesBoard$8;

    invoke-direct {p2, p0, p1, p3}, Lcom/wm65/launcher/NotesBoard$8;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    new-instance p2, Lcom/wm65/launcher/NotesBoard$9;

    invoke-direct {p2, p0, p1, p3}, Lcom/wm65/launcher/NotesBoard$9;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method public static openApp(Landroid/app/Activity;)V
    .locals 4

    .line 479
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->app(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 480
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/wm65/launcher/NoteStore;->pkgOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    .line 488
    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/wm65/launcher/AppStore;->findByKeyCached(Landroid/content/Context;Ljava/lang/String;)Lcom/wm65/launcher/AppStore$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p0}, Lcom/wm65/launcher/AppStore$AppInfo;->launchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    .line 493
    invoke-static {p0, v3}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 496
    :cond_1
    invoke-static {p0, v2}, Lcom/wm65/launcher/NotesBoard;->openMarket(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static openMarket(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 502
    const-string v0, "android.intent.action.VIEW"

    .line 0
    const-string v1, "market://details?id="

    .line 502
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 504
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 505
    invoke-static {p0, v2}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 511
    :catch_0
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "https://www.yynote.cn/"

    .line 512
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 511
    invoke-static {p0, p1}, Lcom/wm65/launcher/Ui;->startExternal(Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const p1, 0x7f030008

    const/4 v0, 0x0

    .line 514
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static showConfig(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 4

    const v0, 0x7f03003d

    .line 427
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f03003e

    .line 429
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f030047

    .line 430
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f03004a

    .line 431
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f030031

    .line 432
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/wm65/launcher/NotesBoard$11;

    invoke-direct {v2, p0, p1}, Lcom/wm65/launcher/NotesBoard$11;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NotesBoard$Host;)V

    .line 427
    invoke-static {p0, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method

.method private static showNoteMenu(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V
    .locals 4

    .line 393
    iget-object v0, p1, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f030043

    .line 395
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f030040

    .line 396
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f030049

    .line 397
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f030031

    .line 398
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/wm65/launcher/NotesBoard$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/wm65/launcher/NotesBoard$10;-><init>(Landroid/app/Activity;Lcom/wm65/launcher/NoteStore$Note;Lcom/wm65/launcher/NotesBoard$Host;)V

    .line 393
    invoke-static {p0, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method
