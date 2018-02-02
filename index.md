---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: default
---

<h1>Flowmar's Stuffs<br>

I love coding!

<br>

<div>
{% for post in site.posts %}
<a href="{{ post.url }}"><h2> {{ post.title }}</h2></a>
{{ post.content | strip_html | truncatewords: 40 }}

<br>
<em>Posted on {{ post.date | date_to_string }}</em>

<br>
{% endfor %}
</div>