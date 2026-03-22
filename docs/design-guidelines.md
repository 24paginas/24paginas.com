# 24paginas.com Design Guidelines

Comics blog. Spanish language. Multiple authors (neverbot, uncientovolando, hecdruiz).

## Color Scheme

| Role                   | Value      |
| ---------------------- | ---------- |
| Background             | `#fff`     |
| Font (body)            | `#424242`  |
| Font secondary (meta)  | `#767676`  |
| Accent / link hover    | `#ea9700`  |
| Emphasis               | `#ff7c00`  |
| Post link              | `#ffa500`  |
| Post link hover        | `#ff7430`  |
| Pagination link        | `#ea9700`  |
| Border                 | `#e8e8e8`  |
| Code font              | `#c7254e`  |
| Code background        | `#f8f5ec`  |

No dark mode.

## Typography

| Role     | Font        |
| -------- | ----------- |
| Body     | Montserrat  |
| Headings | Poppins     |
| Title    | Poppins     |

## Header

Logo image (circular, with emphasis-color border) on the left, site title text hidden on mobile. Desktop navbar with menu items: Archivo, Acerca de. Mobile: hamburger menu.

## Footer

Minimal copyright line.

## Navigation

- Desktop: horizontal navbar with logo + menu items
- Mobile: hamburger button (text `☰ menú`), opens vertical menu
- Docs dropdown not present (simpler nav than maldorne)

## Home Page

Profile/intro section at top with logo, description, and social icon links. Front archive list below showing recent posts with dates.

## Post Layout

- Post titles with `>` chevron marker (not `#`)
- Chevron animates on hover
- Post subtitle support
- Gallery slider via `hexo-gallery-slider` plugin
- Related posts section (production builds only, `--pro` flag)

## Sidebar

Right sidebar with randomized link lists.

## Comments

Giscus (GitHub Discussions). Theme set to `light`.

## Authors System

Multiple authors configured in `_config.yml`:
```yaml
authors:
  neverbot:
    url: https://neverbot.com
  uncientovolando:
    url: https://instagram.com/uncientovolando
  hecdruiz:
    url: https://instagram.com/hecdruiz
```

Each post has an `author` field in frontmatter. The template links the author name to their URL.

## Unique Features

- Multiple author support
- Gallery slider for image posts
- Timeline page layout
- Profile page layout
- `build:pro` for related posts calculation
