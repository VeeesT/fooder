create table message (
  id bigint not null auto_increment,
  filename varchar(255),
  tag varchar(255),
  name varchar(2048) not null,
  user_id bigint,
  primary key (id)
) engine=MyISAM;

create table user_role (
  user_id bigint not null,
  roles varchar(255)
) engine=MyISAM;

create table usr (
  id bigint not null auto_increment,
  activation_code varchar(255),
  active bit not null,
  email varchar(255),
  password varchar(255) not null,
  username varchar(255) not null,
  primary key (id)
) engine=MyISAM;

create table user_subscriptions (
   channel_id int not null references usr,
   subscriber_id int not null references usr,
   CONSTRAINT pk_PersonID PRIMARY KEY (channel_id, subscriber_id)
) engine=MyISAM;

create table message_likes (
   user_id int not null references usr,
   message_id int not null references message,
   CONSTRAINT ps_PersonID PRIMARY KEY (user_id, message_id)
) engine=MyISAM;

alter table message
  add constraint message_user_fk
  foreign key (user_id) references usr (id);

alter table user_role
  add constraint user_role_user_fk
  foreign key (user_id) references usr (id);

insert into usr(id, username, password, active) values(1,'admin','$2a$08$IJIxzOQ3s5Ihxz9LlAQXx.R4OfwgVzrmM8Daj6zH3t5S0ULA9TtG6',true);
insert into user_role (user_id, roles) values(1, 'USER'), (1, 'ADMIN');