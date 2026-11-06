.class Lcom/wm65/launcher/MainActivity$34;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$MenuHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/MainActivity;->configLogo(Landroid/widget/ImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/MainActivity;

.field final synthetic val$logo:Landroid/widget/ImageView;

.field final synthetic val$prefKey:Ljava/lang/String;

.field final synthetic val$reqCode:I


# direct methods
.method constructor <init>(Lcom/wm65/launcher/MainActivity;ILjava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2185
    iput-object p1, p0, Lcom/wm65/launcher/MainActivity$34;->this$0:Lcom/wm65/launcher/MainActivity;

    iput p2, p0, Lcom/wm65/launcher/MainActivity$34;->val$reqCode:I

    iput-object p3, p0, Lcom/wm65/launcher/MainActivity$34;->val$prefKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/wm65/launcher/MainActivity$34;->val$logo:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 2189
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$34;->this$0:Lcom/wm65/launcher/MainActivity;

    iget v0, p0, Lcom/wm65/launcher/MainActivity$34;->val$reqCode:I

    invoke-static {p1, v0}, Lcom/wm65/launcher/Ui;->pickImage(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2191
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$34;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/AppStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/wm65/launcher/MainActivity$34;->val$prefKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2192
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$34;->val$logo:Landroid/widget/ImageView;

    const v0, 0x7f020002

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2193
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$34;->this$0:Lcom/wm65/launcher/MainActivity;

    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 2194
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2196
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$34;->this$0:Lcom/wm65/launcher/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wm65/launcher/MainActivity$34;->this$0:Lcom/wm65/launcher/MainActivity;

    const-class v2, Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/wm65/launcher/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2197
    iget-object p1, p0, Lcom/wm65/launcher/MainActivity$34;->this$0:Lcom/wm65/launcher/MainActivity;

    invoke-static {p1}, Lcom/wm65/launcher/Ui;->fade(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method
