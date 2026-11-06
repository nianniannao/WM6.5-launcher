.class Lcom/wm65/launcher/SettingsActivity$10$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wm65/launcher/SettingsActivity$10;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity$10;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$10$1;->this$1:Lcom/wm65/launcher/SettingsActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/wm65/launcher/SettingsActivity$10$1;->this$1:Lcom/wm65/launcher/SettingsActivity$10;

    iget-object v0, v0, Lcom/wm65/launcher/SettingsActivity$10;->this$0:Lcom/wm65/launcher/SettingsActivity;

    iget-object v1, p0, Lcom/wm65/launcher/SettingsActivity$10$1;->this$1:Lcom/wm65/launcher/SettingsActivity$10;

    iget-object v1, v1, Lcom/wm65/launcher/SettingsActivity$10;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-static {v1}, Lcom/wm65/launcher/SettingsActivity;->-$$Nest$fgetmScroll(Lcom/wm65/launcher/SettingsActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wm65/launcher/WallpaperHelper;->applyTo(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
