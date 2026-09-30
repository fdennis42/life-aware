-- Life Aware: private per-user storage (health + money).
-- Run once in Supabase → SQL Editor. Each user can only read and write
-- their own file: life-data/<their user id>/data.json

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('life-data', 'life-data', false, 10485760, array['application/json'])
on conflict (id) do update set public = false;

create policy "life-data: read own file" on storage.objects
  for select to authenticated
  using (bucket_id = 'life-data' and (storage.foldername(name))[1] = (select auth.uid())::text);

create policy "life-data: create own file" on storage.objects
  for insert to authenticated
  with check (bucket_id = 'life-data' and (storage.foldername(name))[1] = (select auth.uid())::text);

create policy "life-data: update own file" on storage.objects
  for update to authenticated
  using (bucket_id = 'life-data' and (storage.foldername(name))[1] = (select auth.uid())::text)
  with check (bucket_id = 'life-data' and (storage.foldername(name))[1] = (select auth.uid())::text);

create policy "life-data: delete own file" on storage.objects
  for delete to authenticated
  using (bucket_id = 'life-data' and (storage.foldername(name))[1] = (select auth.uid())::text);
