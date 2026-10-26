# 貓咪搗蛋計畫 — playable prototype

Open `index.html` from a local web server (for example `python -m http.server 8000`) or publish the whole directory on GitHub Pages. For the easiest upload, unzip the provided ZIP and put `index.html` and `assets/` at the root of your repository. GitHub Settings → Pages → Deploy from branch → main / root.

Features: 3-tier shelf, owner facing away reading newspaper and intermittently looking back, escalating warning/look timing, stop-or-lose mechanic, item respawns, scores, touch/swipe + button + keyboard controls, tutorial, real uploaded meme images, score-card PNG, Web Share API fallback, and local leaderboard.

## Optional online leaderboard (Supabase)

Create a Supabase project. Run `supabase.sql` in the SQL editor. In `index.html`, replace the two empty strings in `const CLOUD={url:'',anonKey:''}` with the Supabase Project URL and the **publishable / anon key** (never a service-role secret). Redeploy. The scoreboard will use the `cat_scores` table. Note: this is a public beta demo and scores are client-submitted; production-grade anti-cheat needs server-authoritative verification, rate limits, abuse controls, and secure identity / per-run proof. The sample policy allows inserts for demonstration only.

Mobile browser sharing depends on platform and whether it accepts images; users can always download the generated PNG. All images are local files; no third-party image server is required.

V1.4：移除「儲存梗圖」按鈕；新增原創 Web Audio 日系輕快背景旋律，與音效共用開關。背景音樂需點擊開始遊戲後啟動。


V1.6: 玩家貓咪改為白色、蓬鬆、藍綠玻璃大眼的 Q 版幼貓；顯著縮小約 45%，降低遮擋。
