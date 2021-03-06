create table files (
  created timestamp not null,
  bucket varchar(50) not null,
  key varchar(255) not null,
  "manifestKey" varchar(255) not null
);

create index idx_files_created on files(created);

create table users (
  name bytea not null,
  password bytea not null
);

create unique index idx_users_unique_name on users(name);
