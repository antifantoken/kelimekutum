-- Supabase Dashboard > SQL Editor alanında tamamını çalıştırın.
create extension if not exists pgcrypto;

create table if not exists public.user_words (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  english text not null,
  turkish text not null,
  example text not null default '',
  learned boolean not null default false,
  created_at timestamptz not null default now()
);
create index if not exists user_words_user_id_idx on public.user_words(user_id);

create table if not exists public.quiz_results (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  correct_count integer not null default 0 check (correct_count between 0 and 20),
  wrong_count integer not null default 0 check (wrong_count between 0 and 20),
  score integer not null default 0 check (score between 0 and 100),
  stars_awarded integer not null default 1 check (stars_awarded = 1),
  question_count integer not null default 20 check (question_count = 20),
  completed_at timestamptz not null default now()
);
create index if not exists quiz_results_user_id_idx on public.quiz_results(user_id, completed_at desc);

alter table public.user_words enable row level security;
alter table public.quiz_results enable row level security;
drop policy if exists "Users can read own words" on public.user_words;
create policy "Users can read own words" on public.user_words for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users can insert own words" on public.user_words;
create policy "Users can insert own words" on public.user_words for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Users can update own words" on public.user_words;
create policy "Users can update own words" on public.user_words for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
drop policy if exists "Users can delete own words" on public.user_words;
create policy "Users can delete own words" on public.user_words for delete to authenticated using (auth.uid() = user_id);
drop policy if exists "Users can read own quiz results" on public.quiz_results;
create policy "Users can read own quiz results" on public.quiz_results for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users can insert own quiz results" on public.quiz_results;
create policy "Users can insert own quiz results" on public.quiz_results for insert to authenticated with check (auth.uid() = user_id);
