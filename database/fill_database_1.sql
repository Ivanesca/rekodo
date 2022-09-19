insert into roles (role)
values ('ADMIN');
insert into roles (role)
values ('OWNER');

insert into users (name, password, email, role_id)
values ('Marko Polo', 'pass', 'admin_example@email.com', 1);
insert into users (name, password, email, role_id)
values ('Francis Drake', 'pass', 'owner_example@email.com', 2);

insert into genres (genre)
values ('R&B');
insert into genres (genre)
values ('Pop');
insert into genres (genre)
values ('New Wave');
insert into genres (genre)
values ('Rock');
insert into genres (genre)
values ('Alternative');
insert into genres (genre)
values ('Blues');
insert into genres (genre)
values ('Indie');
insert into genres (genre)
values ('Synth');
insert into genres (genre)
values ('Folk');
insert into genres (genre)
values ('Trap');
insert into genres (genre)
values ('Dance');
insert into genres (genre)
values ('Post Punk');
insert into genres (genre)
values ('Soul');
insert into genres (genre)
values ('Electronic');
insert into genres (genre)
values ('House');
insert into genres (genre)
values ('Soundtrack');

insert into states (state)
values ('S');
insert into states (state)
values ('A');
insert into states (state)
values ('B');
insert into states (state)
values ('C');
insert into states (state)
values ('D');
insert into states (state)
values ('F');

insert into authors (name)
values ('The Weeknd');
insert into authors (name)
values ('Bastille');
insert into authors (name)
values ('Daniel Pemberton');
insert into authors (name)
values ('КИНО');
insert into authors (name)
values ('Hozier');
insert into authors (name)
values ('Kavinsky');

insert into vinyl_types (type_name)
values ('Long Play');
insert into vinyl_types (type_name)
values ('Extended Play');
insert into vinyl_types (type_name)
values ('Single Play');

insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('After Hours', 2020, false, 2,
        'https://avatars.yandex.net/get-music-content/2433821/0cd95eb9.a.10327528-1/m1000x1000?webp=false',
        'Четвёртый студийный альбом канадского певца The Weeknd, выпущенный 20 марта 2020 года.', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Starboy', 2016, false, 2,
        'https://i.pinimg.com/736x/b7/9e/19/b79e1960cc8fc8bff96697a127dd93e0--news-track-daft-punk.jpg',
        'Четвёртый студийный альбом канадского певца The Weeknd, выпущенный 20 марта 2020 года.', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Dawn FM', 2022, false, 2, 'https://m.media-amazon.com/images/I/91+MAKC8NNL._AC_UY654_QL65_.jpg',
        'Четвёртый студийный альбом канадского певца The Weeknd, выпущенный 20 марта 2020 года.', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Wild World', 2016, false, 2, 'https://legatomusic.ru/nas/img/cdimg2/00/25/13/54.jpg', 'By Bastille', 1,
        2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Hozier', 2014, false, 2, 'http://dimedia.ru/images/detailed/197/HOZIER_-_Hozier__Universal___2LP__f.jpg',
        'Hozier', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Bad Blood', 2013, false, 2,
        'https://avatars.mds.yandex.net/get-mpic/4380539/img_id7182349095382497500.jpeg/14hq', 'By Bastille', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Doom Days', 2019, false, 2,
        'https://lastfm.freetls.fastly.net/i/u/ar0/fcf3a005589f20a273cecd5c48d90c0b.jpg', 'By Bastille', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('OutRun', 2013, false, 1, 'http://ecx.images-amazon.com/images/I/61HYfKkaixL._SL1016_.jpg',
        'OutRun by Kavinsky', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Черный альбом', 1991, false, 1,
        'https://main-cdn.sbermegamarket.ru/big1/hlr-system/16886801226/100025716071b0.jpg', 'By КИНО',
        1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Звезда по имени Солнце', 1989, false, 1,
        'https://avatars.yandex.net/get-music-content/143117/bc8002a7.a.10030-4/m1000x1000?webp=false', 'By КИНО', 1,
        2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Группа крови', 1988, false, 1,
        'https://i.pinimg.com/originals/88/2f/02/882f02f0107139beed08032b42cff6d0.jpg', 'By КИНО', 1, 2, 1);
insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id)
values ('Spider-man: Into the Spider-Verse', 2018, false, 4,
        'https://www.1c-interes.ru/images/2021/11/32721639_ost_spider_man_into_the_spider_verse_picture_vinyl_2lp.jpg',
        'Original Motion Picture Soundtrack', 1, 2, 1);

insert into albums_authors (album_id, author_id)
values (1, 1);
insert into albums_authors (album_id, author_id)
values (2, 1);
insert into albums_authors (album_id, author_id)
values (3, 1);
insert into albums_authors (album_id, author_id)
values (4, 2);
insert into albums_authors (album_id, author_id)
values (5, 5);
insert into albums_authors (album_id, author_id)
values (6, 2);
insert into albums_authors (album_id, author_id)
values (7, 2);
insert into albums_authors (album_id, author_id)
values (8, 6);
insert into albums_authors (album_id, author_id)
values (9, 4);
insert into albums_authors (album_id, author_id)
values (10, 4);
insert into albums_authors (album_id, author_id)
values (11, 4);
insert into albums_authors (album_id, author_id)
values (12, 3);

insert into albums_genres(album_id, genre_id)
values (1, 1);
insert into albums_genres(album_id, genre_id)
values (1, 2);
insert into albums_genres(album_id, genre_id)
values (1, 3);
insert into albums_genres(album_id, genre_id)
values (2, 1);
insert into albums_genres(album_id, genre_id)
values (2, 2);
insert into albums_genres(album_id, genre_id)
values (2, 10);
insert into albums_genres(album_id, genre_id)
values (3, 2);
insert into albums_genres(album_id, genre_id)
values (3, 11);
insert into albums_genres(album_id, genre_id)
values (3, 8);
insert into albums_genres(album_id, genre_id)
values (4, 4);
insert into albums_genres(album_id, genre_id)
values (4, 5);
insert into albums_genres(album_id, genre_id)
values (4, 7);
insert into albums_genres(album_id, genre_id)
values (4, 2);
insert into albums_genres(album_id, genre_id)
values (5, 6);
insert into albums_genres(album_id, genre_id)
values (5, 13);
insert into albums_genres(album_id, genre_id)
values (5, 7);
insert into albums_genres(album_id, genre_id)
values (6, 2);
insert into albums_genres(album_id, genre_id)
values (6, 7);
insert into albums_genres(album_id, genre_id)
values (6, 5);
insert into albums_genres(album_id, genre_id)
values (7, 5);
insert into albums_genres(album_id, genre_id)
values (7, 2);
insert into albums_genres(album_id, genre_id)
values (7, 3);
insert into albums_genres(album_id, genre_id)
values (8, 14);
insert into albums_genres(album_id, genre_id)
values (8, 15);
insert into albums_genres(album_id, genre_id)
values (8, 8);
insert into albums_genres(album_id, genre_id)
values (9, 4);
insert into albums_genres(album_id, genre_id)
values (9, 5);
insert into albums_genres(album_id, genre_id)
values (9, 12);
insert into albums_genres(album_id, genre_id)
values (9, 7);
insert into albums_genres(album_id, genre_id)
values (10, 4);
insert into albums_genres(album_id, genre_id)
values (10, 3);
insert into albums_genres(album_id, genre_id)
values (10, 12);
insert into albums_genres(album_id, genre_id)
values (10, 7);
insert into albums_genres(album_id, genre_id)
values (11, 5);
insert into albums_genres(album_id, genre_id)
values (11, 4);
insert into albums_genres(album_id, genre_id)
values (11, 7);
insert into albums_genres(album_id, genre_id)
values (11, 12);
insert into albums_genres(album_id, genre_id)
values (12, 14);
