<p align="center">
  <img width="800" alt="screenshot" src="/screenshot.png">
</p>

# Maldorne Theme

Based on the [Chic Template](https://github.com/Siricee/hexo-theme-Chic) by [@Siricee](https://github.com/Siricee).

> Chic, French word means 'Elegant' in English.

<p align="center">
<img alt="Author" src="https://img.shields.io/badge/Author-neverbot-blue.svg"/>
<img alt="Author" src="https://img.shields.io/badge/Author-siricee-blue.svg"/>
<img alt="Hexo" src="https://img.shields.io/badge/hexo-3.0+-0e83cd.svg?style=flat-square"/>
<img alt="Build Status" src="https://img.shields.io/badge/device-responsive-orange.svg"/>
</p>

## Contents
- [Doc language](#doc-language)
- [Contents](#contents)
- [Introduction](#introduction)
- [Demo](#demo)
- [Features](#features)
- [Installation](#installation)
- [Configuration](#configuration)
  - [Add 'Tag', 'Category' Page](#add-tagcategory-page)
- [Customize](#customize)
- [FAQ](#faq)
- [Gallary](#gallary)
- [LICENSE](#license)

## Introduction
An elegant, powerful, easy-to-read Hexo theme.

## Demo
- [Demo site (maldorne.org)](https://maldorne.org)
- [Demo site (siricee.github.io)](https://siricee.github.io/hexo-theme-Chic)

## Features
- Appropriate blank blocks, elegant but not simple.
- ~Light/Dark theme, just one click.~ Removed in Maldorne version.
- Abundant highlight mode.
- Elaborately selected fonts, best reading experience. \* *'Microsoft Jhenghei' especially recommended.*
- Auto fit Mobile and Screen responsively.

## Installation

```bash
cd your-blog/themes
git clone https://github.com/neverbot/maldorne-theme.git maldorne
```
- Modify theme setting in `_config.yml` to `maldorne`.
- You can change the theme language in `themes/maldorne/_config.yml` in the `i18n/language` setting. 


## Configuration
<details>
<summary><mark>click here to spread</mark></summary>

```yaml
# Header
navname: House of Maldorne

# navigator items
nav:
  - blog: 
    name: nav.blog 
    url: /archives
  - games: 
    name: nav.games
    url: /games
  - play: 
    name: nav.play
    url: /play
  - about:
    name: nav.about
    url: /about

# favicons
icons: true

# Profile
avatar: /image/maldorne_old_logo.png

i18n:
  language: en

# main menu navigation
## link is the complete url
## icon is the fontawesome icon name
## prefix is the fontawesome style
## Unused keys can be commented out.
links:
  Blog: 
    link: /archives
    icon: book-open
    prefix: fas
  Twitter: 
    link: https://twitter.com/houseofmaldorne
    icon: twitter
    prefix: fab
  LinkedIn: 
    link: https://www.linkedin.com/company/11107294
    icon: linkedin
    prefix: fab
  Github: 
    link: https://github.com/houseofmaldorne/
    icon: github
    prefix: fab
#  Category:
#  Tags: 
#  Link:
#  Resume:
#  Publish:
#  Trophy:
#  Gallary:
#  RSS:
#  AliPay:
#  ZhiHu: 
#  FaceBook:
#  Skype:
#  CodeSandBox:
#  CodePen:
#  Sketch:
#  Gitlab:
#  Dribble:
#  Instagram:
#  Reddit:
#  YouTube:
#  QQ:
#  Weibo:
#  WeChat:

# how links show: you have 2 choice--text or icon.
links_text_enable: false
links_icon_enable: true

# Post page
## Post_meta
post_meta_enable: true

post_author_enable: true
post_date_enable: true
post_category_enable: true
## Post copyright
post_copyright_enable: true

post_copyright_author_enable: true
post_copyright_permalink_enable: true
post_copyright_license_enable: false
post_copyright_license_text: Copyright (c) 2021 House of Maldorne
post_copyright_slogan_enable: false

## toc
post_toc_enable: true
page_toc_enable: true

# Page
page_title_enable: true

# Date / Time format
## Hexo uses Moment.js to parse and display date
## You can customize the date format as defined in
## http://momentjs.com/docs/#/displaying/format/
date_format: MMMM D, YYYY
time_format: HH:mm:ss

# stylesheets loaded in the <head>
stylesheets:
  - /css/style.css

# scripts loaded in the end of the body
scripts:
  - /js/script.js
  - /js/tocbot.min.js
    # tscanlin/tocbot: Build a table of contents from headings in an HTML document.
    # https://github.com/tscanlin/tocbot

# plugin functions
# ...
```
</details>
<br>

### Add 'Tag', 'Category' Page

There is no 'tag' or 'category' page in initialized site. If you need it, please follow the steps below.

1. execute command
```bash
hexo new page tag
hexo new page category
```
2. enter the dictionary
```bash
cd source/tag
```
3. add 'layout' key
```yaml
// source\tag\index.md
---
title: Tag
layout: tag
---
```
4. So do the category page.please set keyword 'layout' category.

## Customize

- Highlight Style：Enter `maldorne-theme\source\css\style.styl` change stylesheet with key word `_highlight` in link in `_highlight` dictionary.

- Customize stylesheets in path below.(stylus）

   `maldorne-theme\source\css\custom.styl`

- Customize javascripts in dictionary below.

  `maldorne-theme\source\js`

  Then add declaration in `_config.yml` key word 'script'

## FAQ

1. I deployed my site on second-level url (such as username.github.io/Blog), why my css,avatar and other sources missed (404 error)?

    Answer: You need change some URLs in root config url keyword. For instance:
    ```yaml
    # (blog/_config.yml)

    # URL
    ## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
    url: https://siricee.github.io/hexo-theme-Chic/  # this is your deploy url.
    root: /hexo-theme-Chic/  # this is your root folder url.
    permalink: :year/:month/:day/:title/
    permalink_defaults:
    ```

2. How to set the dark theme as default theme for whole site automatically?
   
   Answer: You need to change some codes in `maldorne-theme\source\js\script.js`, function `document.ready` as below.
   ```javascript
   document.ready(
    function () {
        // ...Omit part of the code
        const isDark = currentTheme === 'dark';
        // change this line to
        // const isDark = currentTheme !== 'dark';
   ```
   Now, you have already set the dark theme as default successfully.

3. More questions will be added later...


## LICENSE
- Chic © [@Siricee](https://github.com/Siricee)
- Maldorne © [@neverbot](https://github.com/neverbot)

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
