.class final Lcom/whatsapp/registration/ChangeNumber$a;
.super Ljava/lang/Object;
.source "ChangeNumber.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whatsapp/registration/ChangeNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/whatsapp/registration/ChangeNumber;

.field private b:Lcom/whatsapp/registration/u$c;


# direct methods
.method public constructor <init>(Lcom/whatsapp/registration/ChangeNumber;Lcom/whatsapp/registration/u$c;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/whatsapp/registration/ChangeNumber$a;->a:Lcom/whatsapp/registration/ChangeNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    .line 205
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    .line 210
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whatsapp/mn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    iput-object v0, v1, Lcom/whatsapp/registration/u$c;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    iget-object v1, v1, Lcom/whatsapp/registration/u$c;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    invoke-static {v0, v1}, Lcom/whatsapp/registration/ChangeNumber;->a(Ljava/lang/String;Lcom/whatsapp/registration/u$c;)V

    .line 224
    iget-object v0, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    iget-object v0, v0, Lcom/whatsapp/registration/u$c;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\D"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    iget-object v1, v1, Lcom/whatsapp/registration/u$c;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    iget-object v0, v0, Lcom/whatsapp/registration/u$c;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    iget-object v0, v0, Lcom/whatsapp/registration/u$c;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 233
    :cond_0
    return-void

    .line 215
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/whatsapp/registration/ChangeNumber$a;->b:Lcom/whatsapp/registration/u$c;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/whatsapp/registration/u$c;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    const-string/jumbo v2, "changenumber/watcher/aftertextchanged failed lookupCountryCode from CountryPhoneInfo"

    invoke-static {v2, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method