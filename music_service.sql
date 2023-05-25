create table if not exists genre ( 
	id serial primary key,
	name varchar(40) not null unique
);

create table if not exists bands (
	id serial primary key,
	name varchar(40) not null unique
	);

create table if not exists genre_bands (
	genre_id integer references genre(id),
	band_id integer references bands(id),
	constraint genre_bands_pk primary key (genre_id, band_id)
	);

create table if not exists albums (
	id serial primary key,
	name varchar(40) not null unique,
	release date 
	);

create table if not exists bands_albums (
	album_id integer references albums(id),
	band_id integer references bands(id),
	constraint bands_albums_pk primary key (album_id, band_id)
	);

create table if not exists tracks (
	id serial primary key,
	name varchar(40) not null unique,
	duration integer not null,
	album_id integer references albums(id)
	);

create table if not exists collections (
	id serial primary key,
	name varchar(40) not null unique,
	release date
	);

create table if not exists tracks_collections (
	track_id integer references tracks(id),
	collection_id integer references collections(id),
	constraint tracks_collections_pk primary key (track_id, collection_id)
	);