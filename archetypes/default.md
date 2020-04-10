---
title: "{{ replace .Name "-" " " | title }}"
slug: "{{ replace .Name " " "-" | lower }}"
type: "page"
date: {{ .Date }}
draft: true
comments: false
---
