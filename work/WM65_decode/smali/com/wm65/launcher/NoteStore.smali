.class public final Lcom/wm65/launcher/NoteStore;
.super Ljava/lang/Object;
.source "NoteStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wm65/launcher/NoteStore$Note;
    }
.end annotation


# static fields
.field private static final CANDIDATES:[[Ljava/lang/String;

.field public static final DEFAULT_LABEL:Ljava/lang/String; = "\u5c0f\u9ec4\u6761"

.field public static final DEFAULT_PKG:Ljava/lang/String; = "com.xiaohuangtiao"

.field private static final KEY_APP:Ljava/lang/String; = "note_app"

.field private static final KEY_APP_MANUAL:Ljava/lang/String; = "note_app_manual"

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final KEY_ITEMS:Ljava/lang/String; = "items"

.field private static final KEY_VER:Ljava/lang/String; = "ver"

.field private static final PREFS:Ljava/lang/String; = "wm65_notes"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    const-string v0, "com.microsoft.todos"

    const-string v1, "Microsoft To Do"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.microsoft.todo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.microsoft.tasks"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.microsoft.todos.activity"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u5c0f\u9ec4\u6761"

    const-string v5, "com.xiaohuangtiao"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v3, v1, v4}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wm65/launcher/NoteStore;->CANDIDATES:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 119
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 120
    new-instance v8, Lcom/wm65/launcher/NoteStore$Note;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, v8

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/wm65/launcher/NoteStore$Note;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {p0, v0}, Lcom/wm65/launcher/NoteStore;->save(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static all(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/wm65/launcher/NoteStore$Note;",
            ">;"
        }
    .end annotation

    .line 70
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "items"

    const-string v4, "[]"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 73
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_0

    .line 74
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 75
    new-instance v11, Lcom/wm65/launcher/NoteStore$Note;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v4, "t"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "g"

    .line 76
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "ts"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/wm65/launcher/NoteStore$Note;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    .line 75
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public static app(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .line 216
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "note_app"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "note_app_manual"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/16 v5, 0xa

    .line 218
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    .line 220
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v5, v3

    .line 221
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_0
    invoke-static {p0, v0}, Lcom/wm65/launcher/NoteStore;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    filled-new-array {v6, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 234
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 235
    sget-object v0, Lcom/wm65/launcher/NoteStore;->CANDIDATES:[[Ljava/lang/String;

    array-length v5, v0

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v0, v6

    .line 236
    aget-object v8, v7, v3

    invoke-static {p0, v8}, Lcom/wm65/launcher/NoteStore;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    aget-object v0, v7, v4

    aget-object v5, v7, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 238
    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    aget-object p0, v7, v4

    aget-object v0, v7, v3

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 245
    :catch_0
    :cond_3
    const-string p0, "\u5c0f\u9ec4\u6761"

    const-string v0, "com.xiaohuangtiao"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 110
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "filter"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 277
    invoke-static {p1}, Lcom/wm65/launcher/NoteStore;->pkgOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 282
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return v1

    .line 288
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    :cond_2
    :goto_0
    return v0
.end method

.method public static pkgOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 265
    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 65
    const-string v0, "wm65_notes"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Landroid/content/Context;J)V
    .locals 5

    .line 138
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wm65/launcher/NoteStore$Note;

    .line 141
    iget-wide v3, v2, Lcom/wm65/launcher/NoteStore$Note;->id:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {p0, v1}, Lcom/wm65/launcher/NoteStore;->save(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static removeTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wm65/launcher/NoteStore$Note;

    .line 177
    iget-object v3, v2, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/wm65/launcher/NoteStore$Note;

    iget-wide v5, v2, Lcom/wm65/launcher/NoteStore$Note;->id:J

    iget-object v7, v2, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    const-string v8, ""

    iget-wide v9, v2, Lcom/wm65/launcher/NoteStore$Note;->ts:J

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/wm65/launcher/NoteStore$Note;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    move-object v2, v3

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_2
    invoke-static {p0, v1}, Lcom/wm65/launcher/NoteStore;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 180
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->filter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 181
    const-string p1, ""

    invoke-static {p0, p1}, Lcom/wm65/launcher/NoteStore;->setFilter(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static renameTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wm65/launcher/NoteStore$Note;

    .line 157
    iget-object v3, v2, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v3, Lcom/wm65/launcher/NoteStore$Note;

    iget-wide v5, v2, Lcom/wm65/launcher/NoteStore$Note;->id:J

    iget-object v7, v2, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    iget-wide v9, v2, Lcom/wm65/launcher/NoteStore$Note;->ts:J

    move-object v4, v3

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/wm65/launcher/NoteStore$Note;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {p0, v1}, Lcom/wm65/launcher/NoteStore;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 164
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->filter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 165
    invoke-static {p0, p2}, Lcom/wm65/launcher/NoteStore;->setFilter(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static resetApp(Landroid/content/Context;)V
    .locals 1

    .line 259
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "note_app"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "note_app_manual"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static save(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/wm65/launcher/NoteStore$Note;",
            ">;)V"
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wm65/launcher/NoteStore$Note;

    .line 188
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 190
    :try_start_0
    const-string v3, "id"

    iget-wide v4, v1, Lcom/wm65/launcher/NoteStore$Note;->id:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    const-string v3, "t"

    iget-object v4, v1, Lcom/wm65/launcher/NoteStore$Note;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v3, "g"

    iget-object v4, v1, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v3, "ts"

    iget-wide v4, v1, Lcom/wm65/launcher/NoteStore$Note;->ts:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "items"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 200
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->version(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string v0, "ver"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 255
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "note_app"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAppManual(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "note_app"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "note_app_manual"

    const/4 p2, 0x1

    .line 251
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFilter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 114
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "filter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 115
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->version(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string v0, "ver"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static tags(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 101
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wm65/launcher/NoteStore$Note;

    .line 102
    iget-object v2, v1, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v1, v1, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static update(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 125
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wm65/launcher/NoteStore$Note;

    .line 128
    iget-wide v3, v2, Lcom/wm65/launcher/NoteStore$Note;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 129
    new-instance v3, Lcom/wm65/launcher/NoteStore$Note;

    iget-wide v5, v2, Lcom/wm65/launcher/NoteStore$Note;->id:J

    iget-wide v9, v2, Lcom/wm65/launcher/NoteStore$Note;->ts:J

    move-object v4, v3

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/wm65/launcher/NoteStore$Note;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {p0, v1}, Lcom/wm65/launcher/NoteStore;->save(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static version(Landroid/content/Context;)I
    .locals 2

    .line 205
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ver"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static visible(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/wm65/launcher/NoteStore$Note;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->filter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {p0}, Lcom/wm65/launcher/NoteStore;->all(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 90
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wm65/launcher/NoteStore$Note;

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/wm65/launcher/NoteStore$Note;->tag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
