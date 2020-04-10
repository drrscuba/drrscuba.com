---
title: "{{ replace .Name "-" " " | title }}"
slug: "{{ replace .Name " " "-" | lower }}"
type: "blog"
date: {{ .Date }}
draft: true
comments: false
---
