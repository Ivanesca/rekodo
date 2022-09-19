create or replace view statistics as
    select authors.id, authors.name, count(aa.author_id) albums_count
    from authors left join albums_authors aa on authors.id = aa.author_id
    group by authors.id;
