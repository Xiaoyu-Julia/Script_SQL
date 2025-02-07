CREATE TABLE HumanUser
(
    id_user int,
    login varchar(255),
    password varchar(255),
    email varchar(255),
    user_name varchar(255),
    nick_name varchar(255),
    img varchar(255),
    birthday date,
    country varchar(255)
);

CREATE TABLE UserAccount
(
    id_user_account int,
    login varchar(255),
    password varchar(255),
    email varchar(255),
    id-user int,
    primary key (id_user_account),
    foreign key (id_user) references UserAccount(id_user)
);

CREATE TABLE TokenPack
(
    id_token int,
    nb_token int,
    pack_name varchar(255),
    pack_begin date,
    pack_end date
);

CREATE Game
(
       id_game int,
       game_name varchar(255),
       id-board int,
       primary key (id_game),
       foreign key (id_board) references Board(id_board)

);



