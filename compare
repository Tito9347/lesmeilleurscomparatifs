lesmeilleurscomparatifs/
├─ index.html
├─ 404.html
├─ _headers
├─ _redirects
├─ netlify.toml
├─ README.md
├─ LICENSE
├─ .gitignore
├─ .editorconfig
├─ assets/
│  ├─ styles.css
│  └─ script.js
├─ categories/
│  ├─ smartphones.html
│  ├─ casques-audio.html
│  ├─ montres-connectees.html
│  ├─ chaussures-running.html
│  ├─ idees-cadeaux.html
│  ├─ aspirateurs.html
│  ├─ robots-cuisine.html
│  └─ luminaires-deco.html
├─ pages/
│  ├─ mentions-legales.html
│  └─ confidentialite.html
└─ data/
   └─ categories.json
# OS
.DS_Store
Thumbs.db

# Editors
.vscode/
*.code-workspace

# Zips / exports
*.zip
root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
indent_style = space
indent_size = 2
trim_trailing_whitespace = true
[build]
  publish = "."

# Exemple d’en-têtes globaux
[[headers]]
  for = "/*"
  [headers.values]
    Referrer-Policy = "strict-origin-when-cross-origin"
    X-Frame-Options = "SAMEORIGIN"
    X-Content-Type-Options = "nosniff"

# Cache long pour les assets
[[headers]]
  for = "/assets/*"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"

# 404 personnalisée
[[redirects]]
  from = "/*"/*
  Referrer-Policy: strict-origin-when-cross-origin
  X-Frame-Options: SAMEORIGIN
  X-Content-Type-Options: nosniff

/assets/*
  Cache-Control: public, max-age=31536000, immutable

  to = "/404.html"
  status = 404
