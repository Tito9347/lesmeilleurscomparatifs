<!DOCTYPE html>
<html lang="fr" data-theme="light">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Comparatifs d'objets, guides d'achat et conseils pour trouver les meilleurs produits multi‑thématiques." />
  <title>LesMeilleursComparatifs — Comparatifs & Guides</title>
  <style>
    :root{
      --beige:#F5F1E8;
      --beige-ink:#3A3A34;
      --green:#0F5C4A;
      --green-ink:#EAF5F1;
      --card:#FFFFFF;
      --muted:#6B6B63;
      --ring:rgba(15,92,74,.3);
      --shadow:0 6px 24px rgba(0,0,0,.08);
    }
    [data-theme="dark"]{
      --beige:#11130F;
      --beige-ink:#ECEADF;
      --green:#0F5C4A;
      --green-ink:#EAF5F1;
      --card:#171A16;
      --muted:#B8B6A9;
      --ring:rgba(234,245,241,.25);
      --shadow:0 6px 24px rgba(0,0,0,.4);
    }
    *{box-sizing:border-box}
    html,body{margin:0;padding:0}
    body{
      font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial,"Apple Color Emoji","Segoe UI Emoji";
      line-height:1.6; background:var(--beige); color:var(--beige-ink);
    }
    a{color:var(--green); text-decoration:none}
    a:hover{text-decoration:underline}
    .container{width:min(1200px,100% - 2rem); margin-inline:auto}
    header.site{
      position:sticky; top:0; z-index:40; backdrop-filter:saturate(140%) blur(8px);
      background:color-mix(in oklab, var(--beige) 88%, transparent);
      border-bottom:1px solid color-mix(in oklab, var(--beige-ink) 10%, transparent);
    }
    .topbar{display:grid; grid-template-columns:1fr auto 1fr; align-items:center; padding:.6rem 0}
    .brand{justify-self:center; font-weight:900; font-size:1.15rem; letter-spacing:.4px}
    .actions{justify-self:end; display:flex; gap:.5rem; align-items:center}

    .mode-toggle{
      width:40px; height:40px; border-radius:50%; border:none; cursor:pointer;
      display:flex; align-items:center; justify-content:center;
      background:var(--card); box-shadow:var(--shadow);
      transition:background .2s, transform .2s;
    }
    .mode-toggle:hover{transform:rotate(15deg)}

    .nav{display:flex; align-items:center; gap:1rem; padding:.6rem 0 1rem}
    .menu{position:relative}
    .menu>button{all:unset; cursor:pointer; padding:.5rem .75rem; border-radius:10px; border:1px solid color-mix(in oklab, var(--beige-ink) 10%, transparent)}
    .dropdown{position:absolute; top:calc(100% + .4rem); left:0; background:var(--card); border:1px solid color-mix(in oklab, var(--beige-ink) 12%, transparent); border-radius:14px; box-shadow:var(--shadow); padding:.5rem; display:none; min-width:260px}
    .dropdown a{display:block; padding:.5rem .6rem; border-radius:10px}
    .dropdown a:hover{background:color-mix(in oklab, var(--beige-ink) 10%, transparent)}

    .hero{padding:2rem 0 1rem}
    .pillbar{display:flex; gap:.5rem; flex-wrap:wrap}
    .pill{background:var(--green); color:var(--green-ink); border-radius:999px; padding:.4rem .75rem; font-weight:700; font-size:.9rem}

    .searchbar{margin:1rem 0}
    .searchbar input{width:100%; padding:.9rem 1rem; border-radius:14px; border:1px solid color-mix(in oklab, var(--beige-ink) 18%, transparent); background:var(--card); color:inherit; outline:none}
    .searchbar input:focus{box-shadow:0 0 0 4px var(--ring)}

    .grid{display:grid; grid-template-columns:repeat(auto-fill,minmax(260px,1fr)); gap:1rem}
    .card{background:var(--card); border:1px solid color-mix(in oklab, var(--beige-ink) 12%, transparent); border-radius:16px; overflow:hidden; box-shadow:var(--shadow); display:flex; flex-direction:column}
    .thumb{aspect-ratio:4/3; background:color-mix(in oklab, var(--green) 12%, var(--beige)); display:grid; place-items:center; color:var(--muted); font-weight:700}
    .body{padding:1rem; display:grid; gap:.4rem}
    .badge{display:inline-block; background:color-mix(in oklab, var(--green) 16%, var(--beige)); color:var(--green); border:1px solid var(--green); padding:.15rem .5rem; border-radius:999px; font-size:.75rem; font-weight:800}

    footer.site{margin-top:2rem; padding:2rem 0; border-top:1px solid color-mix(in oklab, var(--beige-ink) 10%, transparent)}
    .sr-only{position:absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0); white-space:nowrap; border:0}
  </style>
</head>
<body>
  <header class="site">
    <div class="container topbar">
      <div></div>
      <div class="brand" aria-label="Nom du site">LesMeilleursComparatifs</div>
      <div class="actions">
        <button class="mode-toggle" id="modeToggle" aria-label="Activer / désactiver le mode sombre">🌗</button>
      </div>
    </div>
    <div class="container nav">
      <div class="menu">
        <button id="menuBtn" aria-haspopup="true" aria-expanded="false">Catégories ▾</button>
        <div class="dropdown" id="dropdown" role="menu" aria-label="Menu catégories">
          <a href="#" data-cat="tech">Tech & High‑Tech</a>
          <a href="#" data-cat="sport">Sport & Fitness</a>
          <a href="#" data-cat="maison">Maison & Déco</a>
          <a href="#" data-cat="cuisine">Cuisine</a>
          <a href="#" data-cat="cadeaux">Idées cadeaux</a>
        </div>
      </div>
      <nav class="pillbar" aria-label="Meilleurs comparatifs">
        <a class="pill" href="#">Meilleurs iPhone</a>
        <a class="pill" href="#">Chaussures running</a>
        <a class="pill" href="#">Cadeaux fête des pères</a>
        <a class="pill" href="#">Casques Bluetooth</a>
      </nav>
    </div>
  </header>

  <main class="container">
    <section class="hero">
      <h1 style="margin:.25rem 0">Trouvez le meilleur — simplement</h1>
      <p style="margin:0; opacity:.8">Guides d’achat indépendants et comparatifs multi‑thématiques, mis à jour régulièrement.</p>
      <div class="searchbar">
        <label class="sr-only" for="q">Recherche</label>
        <input id="q" type="search" placeholder="Rechercher un comparatif (ex: aspirateur, iPhone, cadeaux)…" />
      </div>
    </section>

    <section aria-labelledby="gridTitle">
      <h2 id="gridTitle" style="margin-bottom:.5rem">Derniers comparatifs</h2>
      <div id="grid" class="grid"></div>
    </section>
  </main>

  <footer class="site">
    <div class="container" style="display:flex; gap:1rem; justify-content:space-between; flex-wrap:wrap">
      <small>© 2025 LesMeilleursComparatifs</small>
      <small>Certains liens pourront être affiliés. <a href="#">Mentions légales</a> · <a href="#">Confidentialité</a></small>
    </div>
  </footer>

  <script>
    const DATA = [
      { title:"Meilleurs iPhone 2025", cat:"tech", excerpt:"Photos, autonomie, rapport qualité/prix.", badge:"Top Tech", slug:"/categories/smartphones.html" },
      { title:"Chaussures de running 10km", cat:"sport", excerpt:"Stabilité, amorti, dynamisme.", badge:"Sport", slug:"/categories/chaussures-running.html" },
      { title:"Idées cadeaux — Fête des pères", cat:"cadeaux", excerpt:"Sélection à tous les budgets.", badge:"Cadeaux", slug:"/categories/idees-cadeaux.html" },
      { title:"Aspirateurs balais 2025", cat:"maison", excerpt:"Puissance, autonomie, filtration.", badge:"Maison", slug:"/categories/aspirateurs.html" },
      { title:"Robots cuiseurs", cat:"cuisine", excerpt:"Capacités, programmes, facilité d’usage.", badge:"Cuisine", slug:"/categories/robots-cuisine.html" },
      { title:"Casques Bluetooth", cat:"tech", excerpt:"Confort, ANC et audio.", badge:"Audio", slug:"/categories/casques-audio.html" },
    ];

    const grid = document.getElementById('grid');
    const q = document.getElementById('q');
    const menuBtn = document.getElementById('menuBtn');
    const dropdown = document.getElementById('dropdown');
    const modeToggle = document.getElementById('modeToggle');

    function card(item){
      const el = document.createElement('article');
      el.className = 'card';
      el.innerHTML = `
        <div class=\"thumb\">${item.badge}</div>
        <div class=\"body\">
          <span class=\"badge\">${item.badge}</span>
          <h3 style=\"margin:.2rem 0 .1rem\">${item.title}</h3>
          <p style=\"margin:0; opacity:.85\">${item.excerpt}</p>
          <div style=\"display:flex; justify-content:space-between; align-items:center; margin-top:.6rem\">
            <small style=\"opacity:.7\">${item.cat}</small>
            <a class=\"badge\" href=\"${item.slug}\">Voir</a>
          </div>
        </div>`;
      return el;
    }

    function render(list){
      grid.innerHTML = '';
      list.forEach(x => grid.appendChild(card(x)));
    }

    function search(){
      const s = (q.value || '').toLowerCase();
      const filtered = DATA.filter(x => x.title.toLowerCase().includes(s) || x.excerpt.toLowerCase().includes(s) || x.cat.toLowerCase().includes(s));
      render(filtered);
    }

    menuBtn.addEventListener('click', ()=>{
      const open = dropdown.style.display === 'block';
      dropdown.style.display = open ? 'none' : 'block';
      menuBtn.setAttribute('aria-expanded', String(!open));
    });
    dropdown.addEventListener('click', (e)=>{
      if(e.target.matches('[data-cat]')){
        const cat = e.target.getAttribute('data-cat');
        const filtered = DATA.filter(x => x.cat === cat);
        render(filtered);
        dropdown.style.display = 'none';
        menuBtn.setAttribute('aria-expanded','false');
      }
    });
    document.addEventListener('click', (e)=>{
      if(!dropdown.contains(e.target) && !menuBtn.contains(e.target)) dropdown.style.display = 'none';
    });

    q.addEventListener('input', search);

    modeToggle.addEventListener('click', ()=>{
      const cur = document.documentElement.getAttribute('data-theme') || 'light';
      const next = cur === 'light' ? 'dark' : 'light';
      document.documentElement.setAttribute('data-theme', next);
      localStorage.setItem('lmc-theme', next);
    });
    (function initTheme(){
      const saved = localStorage.getItem('lmc-theme');
      if(saved) document.documentElement.setAttribute('data-theme', saved);
    })();

    render(DATA);
  </script>
</body>
</html>
