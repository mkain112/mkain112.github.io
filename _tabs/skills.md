---
title: Skills
icon: fas fa-tags
order: 3
layout: page
---

I'll try to tag all the skills I use in each project as I use them. This page should be a rough representation of my various skills and abilities. 

<div id="tags" class="d-flex flex-wrap mx-xl-2">
  {% assign tags = '' | split: '' %}
  {% for t in site.tags %}
    {% assign tags = tags | push: t[0] %}
  {% endfor %}

  {% assign sorted_tags = tags | sort_natural %}

  {% for t in sorted_tags %}
    <div>
      <a class="tag" href="{{ t | slugify | url_encode | prepend: '/tags/' | append: '/' | relative_url }}">
        {{ t -}}
        <span class="text-muted">{{ site.tags[t].size }}</span>
      </a>
    </div>
  {% endfor %}
</div>

