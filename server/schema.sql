CREATE DATABASE chat;

USE chat;

CREATE TABLE user (
  /* Describe your table here.*/
  ID int,
  username text,
  primary key (id)
);

CREATE TABLE room (
  ID int,
  roomname text,
  primary key (id)
);

CREATE TABLE messages (
  ID int,
  userID int,
  roomID int,
  texts text,
  primary key (ID),
  foreign key (userID) References user (ID),
  foreign key (roomID) References room (ID)
);


/*  Execute this file from the command line by typing:
 *    mysql -u student   < server/schema.sql
 *  to create the database and the tables.*/


  /*
  1) create a table using CREATE Message
  2) create 4 columns (id(primary key), userid (foreign), rm id (foreign), text)
  3) create another table using CREATE user
  4) create 2 columns (id(primary key), username)
  5) create a table using CREATE room
  6) create 2 columns (id(primary key), roomname)
  */