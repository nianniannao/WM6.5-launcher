.class public Lcom/wm65/launcher/QuoteHelper$Quote;
.super Ljava/lang/Object;
.source "QuoteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wm65/launcher/QuoteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quote"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public offline:Z

.field public origin:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
