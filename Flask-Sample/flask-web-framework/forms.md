#### Flask Form


### 基本使用

```
    from wtforms import Form
    from wtforms.fields import StringField
    from wtforms.validators import DataRequired, Length

    class LoginForm(Form):
        name = StringField(validators=[DataRequired(), Length(min=6, max=50)])
        password = StringField(validators=[DataRequired(), Length(min=6, max=16)])

    
    <form>
        {{ form.name(class_="form-control")}}
        {{ form.password(class_="form-control")}}
    </form>
```


### 自定义表单验证器

```
    from wtforms import Form
    from wtforms.fields import StringField, EmailField
    from wtforms.validators import DataRequired

    class RegisterForm(Form):
        username = StringField(validators=[DataRequired(), Length(min=6, max=50)])
        password = StringField(validators=[DataRequired(), Length(min=6, max=16)])
        email = EmailField(validators=[DataRequired()])

        def validate_email(self, value):
            if email:
                pass
            else:
                raise ValueError("email is invalid.")
            
    
    @app.route("/register", methods=["GET", "POST"])
    def register():
        from forms import RegisterForm

        form = RegisterForm(request.form)

        if request.method == "POST" and form.validate():
            return form.username.data, form.email.data
        return render_template("register.html", form=form)
```
