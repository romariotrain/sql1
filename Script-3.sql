create table if not exists Genres (
id SERIAL primary key,
name VARCHAR(60) not null);

create table if not exists Artists (
id SERIAL primary key,
name VARCHAR(60) not null);

create table if not exists genres_artists (
artist_id INTEGER references Artists(id),
genre_id INTEGER references Genres(id),
constraint pk primary key (genre_id, artist_id));

create table if not exists Albums (
id SERIAL primary key,
name VARCHAR(60) not null,
album_year INTEGER not null);

create table if not exists artists_albums (
artist_id INTEGER references Artists(id),
album_id INTEGER references Albums(id),
constraint pk1 primary key (album_id, artist_id));

create table if not exists Tracks (
id SERIAL primary key,
name VARCHAR(60) not null,
duration numeric not null,
album_id INTEGER references albums(id));

create table if not exists Collections (
id SERIAL primary key,
name VARCHAR(60) not null,
collection_year INTEGER not null);

create table if not exists collections_tracks (
track_id INTEGER references Tracks(id),
collection_id INTEGER references Collections(id),
constraint pk2 primary key (collection_id, track_id));

insert into Genres(name)
values('rap');

insert into Genres(name)
values('rock');

insert into Genres(name)
values('hip-hop');

insert into Genres(name)
values('chill');

insert into Genres(name)
values('techno');

insert into Artists(name)
values('romario');

insert into Artists(name)
values('maxim');

insert into Artists(name)
values('misha');

insert into Artists(name)
values('petya');

insert into Artists(name)
values('oleg');

insert into Artists(name)
values('german');

insert into Artists(name)
values('nastya');

insert into Artists(name)
values('vika');

insert into genres_artists (artist_id, genre_id)
values(1,3);

insert into genres_artists (artist_id, genre_id)
values(2,5);

insert into genres_artists (artist_id, genre_id)
values(3,4);

insert into genres_artists (artist_id, genre_id)
values(4,2);

insert into genres_artists (artist_id, genre_id)
values(5,1);

insert into genres_artists (artist_id, genre_id)
values(6,2);

insert into genres_artists (artist_id, genre_id)
values(7,4);

insert into genres_artists (artist_id, genre_id)
values(8,3);

insert into albums (name, album_year)
values('summer', 2018);

insert into albums (name, album_year)
values('winter', 2019);

insert into albums (name, album_year)
values('spring', 2017);

insert into albums (name, album_year)
values('autaumn', 2018);

insert into albums (name, album_year)
values('twix', 2013);

insert into albums (name, album_year)
values('mars', 2012);

insert into albums (name, album_year)
values('nuts', 2021);

insert into albums (name, album_year)
values('spoon', 2022);

insert into artists_albums (artist_id, album_id)
values(1, 1);

insert into artists_albums (artist_id, album_id)
values(2, 1);

insert into artists_albums (artist_id, album_id)
values(2, 2);

insert into artists_albums (artist_id, album_id)
values(2, 3);

insert into artists_albums (artist_id, album_id)
values(3, 4);

insert into artists_albums (artist_id, album_id)
values(5, 5);

insert into artists_albums (artist_id, album_id)
values(6, 6);

insert into artists_albums (artist_id, album_id)
values(7, 6);

insert into artists_albums (artist_id, album_id)
values(8, 7);

insert into artists_albums (artist_id, album_id)
values(8, 8);

insert into tracks (name, duration,album_id)
values('my love', 3.16, 3);

insert into tracks (name, duration,album_id)
values('my country', 2.45, 2);

insert into tracks (name, duration,album_id)
values('love', 3.01, 1);

insert into tracks (name, duration,album_id)
values('sister', 3.05, 4);

insert into tracks (name, duration,album_id)
values('thanks', 3.30, 3);

insert into tracks (name, duration,album_id)
values('i', 2.45, 5);

insert into tracks (name, duration,album_id)
values('dad', 3.30, 6);

insert into tracks (name, duration,album_id)
values('mars', 3.16, 7);

insert into tracks (name, duration,album_id)
values('roman', 3.10, 8);

insert into tracks (name, duration,album_id)
values('my phone', 2.50, 5);

insert into tracks (name, duration,album_id)
values('people', 3.10, 6);

insert into tracks (name, duration,album_id)
values('computer', 3.46, 7);

insert into tracks (name, duration,album_id)
values('like', 3.02, 8);

insert into tracks (name, duration,album_id)
values('ok', 2.42, 4);

insert into tracks (name, duration,album_id)
values('respect', 4.20, 5);


insert into collections (name, collection_year)
values('ok', 2015);

insert into collections (name, collection_year)
values('like', 2018);

insert into collections (name, collection_year)
values('Russia', 2019);

insert into collections (name, collection_year)
values('house', 2014);

insert into collections (name, collection_year)
values('person', 2022);

insert into collections (name, collection_year)
values('yo', 2021);

insert into collections (name, collection_year)
values('me', 2020);

insert into collections (name, collection_year)
values('thanks', 2017);

insert into collections_tracks (track_id, collection_id)
values(1, 3);

insert into collections_tracks (track_id, collection_id)
values(2, 5);

insert into collections_tracks (track_id, collection_id)
values(3, 4);

insert into collections_tracks (track_id, collection_id)
values(4, 6);

insert into collections_tracks (track_id, collection_id)
values(5, 8);

insert into collections_tracks (track_id, collection_id)
values(6, 7);

insert into collections_tracks (track_id, collection_id)
values(7, 4);

insert into collections_tracks (track_id, collection_id)
values(8, 1);

insert into collections_tracks (track_id, collection_id)
values(9, 2);

insert into collections_tracks (track_id, collection_id)
values(10, 3);

insert into collections_tracks (track_id, collection_id)
values(11, 5);

insert into collections_tracks (track_id, collection_id)
values(12, 7);

insert into collections_tracks (track_id, collection_id)
values(13, 8);

insert into collections_tracks (track_id, collection_id)
values(14, 2);

insert into collections_tracks (track_id, collection_id)
values(15, 1);

select name, album_year from albums
where album_year = 2018;

select name, duration from tracks
order by duration desc
limit 1;

select name from tracks
where duration > 3.5;

select name from collections
where collection_year between 2018 and 2020;

select name from artists
where name not like '% %';

select name from tracks
where name like '%my%' or name like '%мой%';
