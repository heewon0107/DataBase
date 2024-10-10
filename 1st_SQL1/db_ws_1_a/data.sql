-- Active: 1728528453458@@127.0.0.1@3306

SELECT * FROM songs;

PRAGMA table_info('songs');

# songs 테이블 생성하기
CREATE TABLE songs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  artist TEXT NOT NULL,
  album TEXT NOT NULL,
  genre TEXT NOT NULL,
  duration INTEGER NOT NULL
);

INSERT INTO songs (title, artist, album, genre, duration)
VALUES ('Song1', 'Artist1', 'Album1', 'POP', 200),
('Song2', 'Artist2', 'Album2', 'ROck', 200),
('Song3', 'Artist3', 'Album3', 'JPOP', 200),
('Song4', 'Artist4', 'Album4', 'RAB', 200),
('Song5', 'Artist5', 'Album5', 'Dance', 200);

UPDATE songs
SET title = "New Title"
WHERE id = 1;