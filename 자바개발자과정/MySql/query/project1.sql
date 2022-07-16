INSERT INTO membergrade (mg_grade, mg_name, mg_type, mg_board, mg_com, mg_visit, mg_use)
VALUES (1, "시작멤버", 0, 1, 1, 1, 1);
INSERT INTO membergrade (mg_grade, mg_name, mg_type, mg_board, mg_com, mg_visit, mg_use)
VALUES (2, "일반멤버", 0, 2, 2, 2, 1);
INSERT INTO membergrade (mg_grade, mg_name, mg_type, mg_board, mg_com, mg_visit, mg_use)
VALUES (3, "열심멤버", 0, 3, 3, 3, 1);
INSERT INTO membergrade (mg_grade, mg_name, mg_type, mg_board, mg_com, mg_visit, mg_use)
VALUES (4, "우수멤버", 0, 4, 4, 4, 1);
INSERT INTO membergrade (mg_grade, mg_name, mg_type, mg_board, mg_com, mg_visit, mg_use)
VALUES (5, "최고관리자", 0, 5, 5, 5, 0);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb1@java.com", "airbnb1", "홍길동1", "아무개1", "M", "01012121212", "1999-01-01", "2021-10-11 09:01:11",
1, 0, 0, 0, 5);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb2@java.com", "airbnb2", "홍길동2", "아무개2", "F", "01013131313", "1999-02-02","2021-10-12 09:02:11",
1, 0, 0, 0, 2);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb3@java.com", "airbnb3", "홍길동3", "아무개3", "M", "01014141414", "1999-03-03", "2021-10-13 09:01:11",
2, 0, 0, 0, 2);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb4@java.com", "airbnb4", "홍길동4", "아무개4", "F", "01015151515", "1999-04-04", "2021-10-15 09:01:11",
3, 0, 0, 0, 2);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb5@java.com", "airbnb5", "홍길동5", "아무개5", "M", "01016161616", "1999-05-05", "2021-10-16 09:01:11",
1, 0, 0, 0, 3);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb6@java.com", "airbnb6", "홍길동6", "아무개6", "F", "01017171717", "1999-06-06", "2021-10-17 09:01:11",
1, 0, 0, 0, 1);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb7@java.com", "airbnb7", "홍길동7", "아무개7", "M", "01018181818", "1999-07-07", "2021-10-18 09:01:11",
4, 0, 0, 0, 1);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb8@java.com", "airbnb8", "홍길동8", "아무개8", "F", "01019191919", "1999-08-08", "2021-10-19 09:01:11",
3, 0, 0, 0, 1);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb9@java.com", "airbnb9", "홍길동9", "아무개9", "M", "01020202020", "1999-09-09", "2021-10-20 09:01:11",
3, 0, 0, 0, 1);

INSERT INTO member (mb_id, mb_pwd, mb_name, mb_nick, mb_gender, mb_hp, mb_birth, mb_datetime,
mb_state, mb_board, mb_visit, mb_comment, mb_grade)
VALUES ("airbnb10@java.com", "airbnb10", "홍길동10", "아무개10", "F", "01021212121", "1999-10-10", "2021-10-21 09:01:11",
2, 0, 0, 0, 4);



INSERT INTO logrecord (mb_ip, mb_id, mb_log) VALUES ("111.111.11.11", "airbnb1", "1991-11-11 10:11:11");
INSERT INTO logrecord (mb_ip, mb_id, mb_log) VALUES ("111.111.11.12", "airbnb2", "2021-10-22 7:07:07");
SELECT * FROM logrecord ORDER BY mb_log DESC LIMIT 3 OFFSET 0;


SELECT * FROM logrecord WHERE mb_log LIKE NOW();


INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-09-27 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-01 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-02 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-03 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-04 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-05 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-06 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-07 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-08 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-09 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-10 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-11 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-12 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-13 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-14 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-15 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-16 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-17 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-18 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-19 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-20 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-21 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-22 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-22 2:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-23 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-24 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-25 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-26 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-27 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-28 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-29 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-10-30 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-11-01 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log)
VALUES ("111.111.111.11", "airbnb1", "2021-11-02 3:03:03");
INSERT INTO logrecord (mb_ip, mb_id, mb_log ) 
VALUES ( "123.123.123", "airbnb2" , NOW() ); 

SELECT DATEDIFF('2021-10-23 5:32:30', NOW());

SELECT COUNT(*) FROM logrecord 
WHERE DATEDIFF("2021-11-02", mb_log) <=30  AND
DATEDIFF(NOW(), mb_log) >0
GROUP BY DATE(mb_log);

SELECT COUNT(log_no) FROM logrecord 
WHERE DATEDIFF(NOW(), mb_log) <= 7 AND
DATEDIFF(NOW(), mb_log) >0
GROUP BY DATE(mb_log);

SELECT COUNT(log_no) FROM logrecord
WHERE DATEDIFF(NOW(), mb_log) <= 7 AND
DATEDIFF(NOW(), mb_log) >0
GROUP BY DATE(mb_log);

SELECT note.note_no, note.note_con, note_get_mb_no, note_send_mb_no, 
note_getmb_del_state, note_getmb_save_state, note_getmb_read_state, 
note_sendmb_del_state, note_sendmb_save_state, note_datetime, note_identify_send_get_state 
FROM note INNER JOIN noteindex ON note.note_no = noteindex.note_no 
WHERE note_send_mb_no = 2 AND note_sendmb_del_state = 0 AND note_sendmb_save_state = 0 
AND note_identify_send_get_state = 0 
ORDER BY note_datetime DESC 
LIMIT 2 OFFSET 2 ;

SELECT mb_no FROM member 
WHERE mb_id = "ds" ;

SELECT note.note_no, note.note_con, note_get_mb_no, note_send_mb_no, 
note_getmb_del_state, note_getmb_save_state, note_getmb_read_state, 
note_sendmb_del_state, note_sendmb_save_state, note_datetime, note_identify_send_get_state
FROM note INNER JOIN noteindex ON note.note_no = noteindex.note_no 
WHERE note_get_mb_no = 1 AND note_getmb_del_state = 0 AND note_getmb_save_state = 0 
ORDER BY note_datetime DESC;

INSERT INTO note (note_con) VALUES ("abcd");

SELECT COUNT(distinct note_no) FROM noteindex 
WHERE note_send_mb_no = 1 and note_sendmb_del_state = 0 
and note_sendmb_save_state=1;

SELECT mb_no FROM member WHERE mb_id = "java2@java.com";

UPDATE noteindex SET note_sendmb_del_state = 1 
WHERE note_send_mb_no = 1 AND note_no = 5; 

SELECT DISTINCT note.note_no, note.note_con, note_get_mb_no, note_send_mb_no, 
note_getmb_del_state, note_getmb_save_state, note_getmb_read_state, 
note_sendmb_del_state, note_sendmb_save_state, note_datetime, note_identify_send_get_state 
FROM note INNER JOIN noteindex ON note.note_no = noteindex.note_no 
WHERE (note_send_mb_no = 1 AND note_sendmb_del_state = 0 AND note_sendmb_save_state = 1) OR 
(note_get_mb_no = 1 AND note_getmb_del_state = 0 AND note_getmb_save_state = 1) 
ORDER BY note_datetime DESC; 

UPDATE noteindex SET note_sendmb_del_state = 1 
WHERE note_send_mb_no = 11 AND note_no = 11 AND note_sendmb_save_state = 1 ;

UPDATE noteindex SET note_sendmb_save_state = 1
WHERE note_send_mb_no = 1 AND note_no = 9 AND note_sendmb_save_state=0 
AND note_sendmb_del_state = 0;
SELECT DISTINCT note.note_no, note.note_con, note_get_mb_no, note_send_mb_no, 
note_getmb_del_state, note_getmb_save_state, note_getmb_read_state, 
note_sendmb_del_state, note_sendmb_save_state, note_datetime, note_identify_send_get_state 
FROM note INNER JOIN noteindex ON note.note_no = noteindex.note_no 
WHERE (note_send_mb_no = 1 AND note_sendmb_del_state = 0 AND note_sendmb_save_state = 1) OR 
(note_get_mb_no = 1 AND note_getmb_del_state = 0 AND note_getmb_save_state = 1) 
ORDER BY note_datetime DESC ;

SELECT COUNT(log_no) FROM logrecord
WHERE DATEDIFF(NOW(), mb_log) = 0;

UPDATE gradeup SET gu_state = 3 
WHERE mb_no = 15 AND gu_state = 1;

UPDATE noteindex SET note_getmb_read_state = 1 
WHERE note_no = 20 AND note_get_mb_no = 15 AND note_send_mb_no = 15
AND note_getmb_read_state = 0 ; 

SELECT COUNT(note_no) FROM noteindex 
WHERE note_get_mb_no = 20 AND note_getmb_save_state = 0 AND note_getmb_read_state = 0
AND note_getmb_save_state = 0 ; 

