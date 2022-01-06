/*******************************************
*                 초기화
*******************************************/

-- 기존 테이블 삭제
drop table guestbook;

-- 기존 SEQUENCE 삭제
drop sequence seq_guestbook_no;

-- questbook 테이블 생성
create table guestbook(
    no              number(5),
    name            varchar2(80),
    password        varchar2(20),
    content         varchar2(2000),
    reg_date        date,
    primary key(no));  

-- SEQUENCE 생성
create sequence seq_guestbook_no
increment by 1
start with 1
nocache;

/*****************************************************/

insert into guestbook
values(seq_guestbook_no.nextval, '정우성', '1234', '정우성 방문했습니다.', sysdate);

insert into guestbook
values(seq_guestbook_no.nextval, '유재석', '5555', '유재석 방문했습니다', sysdate);

commit;

select * from guestbook;