create table roles
(
    id   int not null auto_increment primary key,
    role varchar(64)
);

create table users
(
    id       int                 not null auto_increment primary key,
    name     varchar(128) unique not null,
    password varchar(128)        not null,
    email    varchar(128) unique not null,
    role_id  int                 not null,
    foreign key (role_id) references roles (id)
);

create table states
(
    id    int         not null auto_increment primary key,
    state varchar(32) not null
);

create table genres
(
    id    int          not null auto_increment primary key,
    genre varchar(128) not null
);

create table authors
(
    id   int          not null auto_increment primary key,
    name varchar(128) not null
);

create table vinyl_types
(
    id        int          not null auto_increment primary key,
    type_name varchar(128) not null
);

create table albums
(
    id            int          not null auto_increment primary key,
    name          varchar(128) not null,
    year          int,
    sale          boolean,
    vinyl_count   int,
    cover         varchar(128),
    description   text,
    vinyl_type_id int,
    owner_id      int,
    state_id      int,
    foreign key (vinyl_type_id) references vinyl_types (id),
    foreign key (owner_id) references users (id),
    foreign key (state_id) references states (id)
);

create table albums_genres
(
    album_id int not null,
    genre_id int not null,
    primary key (album_id, genre_id),
    foreign key (genre_id) references genres (id) on delete cascade on update cascade,
    foreign key (album_id) references albums (id) on delete cascade on update cascade
);

create table albums_authors
(
    album_id  int not null,
    author_id int not null,
    primary key (album_id, author_id),
    foreign key (album_id) references albums (id) on delete cascade on update cascade,
    foreign key (author_id) references authors (id) on delete cascade on update cascade
);

create table messages
(
    id        int  not null auto_increment primary key,
    message   text not null,
    album_id  int  not null,
    sender_id int  not null,
    foreign key (sender_id) references users (id) on delete cascade,
    foreign key (album_id) references albums (id) on delete cascade
);




create table countries (
    id int  auto_increment primary key,
    country varchar(64) unique
);

insert into countries (country) values ('USA');
insert into countries (country) values ('USSR');
insert into countries (country) values ('UK');
insert into countries (country) values ('France');

alter table authors
    add column country_id int default 1,
    add foreign key fk_country(country_id) references countries(id);


alter table messages
add column message_date date;

alter table messages
drop column message_date;
