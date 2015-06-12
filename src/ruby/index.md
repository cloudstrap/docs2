---
layout: default

categories: ruby
technology: ruby
title:  "Ruby приложения в StartАpp"
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
---

# Бързи инструкции

#### 1. Създай приложението
{% highlight bash %}
    app create myrubyapp ruby-2.0
{% endhighlight %}


#### 2. Промени кода
Редактирай съдържанието между `body` таговете във файла `config.ru`:

{% highlight javascript %}
<body>
    <h1> Моето Ruby приложение! </h1>
</body>
{% endhighlight %}


#### 3. Качи приложението
{% highlight bash %}
    git push
{% endhighlight %}


#### 4. Виж в браузър
{% highlight bash %}
    http://myrubyapp-<mydomain>.sapp.io/
{% endhighlight %}

**Да, толкова е лесно!**
