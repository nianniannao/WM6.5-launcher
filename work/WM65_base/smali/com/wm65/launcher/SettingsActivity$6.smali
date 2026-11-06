.class Lcom/wm65/launcher/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wm65/launcher/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wm65/launcher/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/wm65/launcher/SettingsActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 144
    iget-object p1, p0, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v0, 0x7f030090

    .line 145
    invoke-virtual {p1, v0}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v3, 0x7f03008d

    .line 147
    invoke-virtual {v2, v3}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v3, 0x7f030083

    .line 148
    invoke-virtual {v2, v3}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v3, 0x7f03008c

    .line 149
    invoke-virtual {v2, v3}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/wm65/launcher/SettingsActivity$6;->this$0:Lcom/wm65/launcher/SettingsActivity;

    const v3, 0x7f030031

    .line 150
    invoke-virtual {v2, v3}, Lcom/wm65/launcher/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/wm65/launcher/SettingsActivity$6$1;

    invoke-direct {v2, p0}, Lcom/wm65/launcher/SettingsActivity$6$1;-><init>(Lcom/wm65/launcher/SettingsActivity$6;)V

    .line 144
    invoke-static {p1, v0, v1, v2}, Lcom/wm65/launcher/Ui;->showActionSheet(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/wm65/launcher/Ui$MenuHandler;)V

    return-void
.end method
