CREATE TABLE IF NOT EXISTS versions (
id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY,
minor integer NOT NULL,
major integer NOT NULL,
build integer NOT NULL,
released date default NULL,
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS versions_description (
id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY,
version_id integer NOT NULL,
descrption text NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO versions (minor, major, build, released) VALUES
    (1, 2, 227, '02-01-2023'),
    (1, 2, 245, '02-10-2023'),
    (1, 3, 120, '02-14-2023'),
    (1, 4, 12, '03-25-2023'),
    (1, 4, 170, '04-07-2023'),
    (1, 4, 186, '05-11-2023'),
    (1, 5, 14, '05-23-2023'),
    (1, 5, 089, '06-04-2023'),
    (2, 1, 17, '07-18-2023'),
    (2, 1, 149, '08-23-2023'),
    (3, 2, 77, '09-07-2023');

INSERT INTO versions_description (version_id, descrption) VALUES
    (1, 'Первая версия новый функционал 1'),
    (2, 'Первая версия, Lorem ipsum dolor sit amet, consetetur sadipscing elitr'),
    (3, 'Первая версия sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata'),
    (4, 'Первая версия empor invidunt ut labore et dolore magna aliquyam erat'),
    (5, 'Первая версия eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua'),
    (6, 'Первая версия Stet clita kasd gubergren, no sea takimata sanctus '),
    (7, 'Первая версия sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua'),
    (8, 'Первая версия  At vero eos et accusam et justo duo dolores et ea rebum'),
    (9, 'Вторая версия magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata'),
    (10, 'Вторая версия  et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus es'),
    (11, 'Третья версия. Добавили семь кнопок. Пять чекбоксов и изменили фон на ораньжевый');
   
 
