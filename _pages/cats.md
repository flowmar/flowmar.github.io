---
layout: default
title: The Board of Cats
permalink: /cats/
---

<div class="home">
  
  <h1 class="page-heading">Cats</h1>
<ul>
{% for cat in site.data.cats %}
  <li>{{cat.name}}</li>
  <li><img src="{{cat.picture}}" alt="cat picture"></li>
{% endfor %}
</ul>
  <p>If my blog were a collection of cats instead of posts, I'd have {{ site.posts.size }} cats.

  </p>




</div>