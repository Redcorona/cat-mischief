create table if not exists public.cat_scores (
 id bigint generated always as identity primary key,
 nickname text not null check (char_length(nickname) between 1 and 12),
 score integer not null check (score between 0 and 10000000),
 seconds integer not null check (seconds between 0 and 1000000),
 items integer not null check (items between 0 and 1000000),
 created_at timestamptz not null default now()
);
create index if not exists cat_scores_rank_idx on public.cat_scores(score desc, created_at asc);
alter table public.cat_scores enable row level security;
create policy "Public read leaderboard" on public.cat_scores for select to anon using (true);
create policy "Beta submit scores" on public.cat_scores for insert to anon with check (true);
grant select, insert on public.cat_scores to anon;
grant usage, select on sequence public.cat_scores_id_seq to anon;
-- Beta-only policy: no server verification / rate limiting; harden before public launch.
