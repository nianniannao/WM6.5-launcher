.class Lcom/wm65/launcher/SettingsActivity$5$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/wm65/launcher/Ui$TextHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wm65/launcher/SettingsActivity$5;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity$5;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$5$1;->this$1:Lcom/wm65/launcher/SettingsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity$5$1;->this$1:Lcom/wm65/launcher/SettingsActivity$5;

    iget-object v0, v0, Lcom/wm65/launcher/SettingsActivity$5;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {v0, p1}, Lcom/wm65/launcher/WeatherHelper;->setCity(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$5$1;->this$1:Lcom/wm65/launcher/SettingsActivity$5;

    iget-object p1, p1, Lcom/wm65/launcher/SettingsActivity$5;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f030080

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
