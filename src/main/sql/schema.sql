create database seckill;
--使用数据库
use seckill;
--创建秒杀数据库
create table seckill(
  'seckill_id' bigint not null auto_increment '商品库存id',
'name' varchar(120) not null comment '商品名称',
'number' int not null commit '库存数量',
'start_time' TIMEstamp not null comment '秒杀开始时间',
'end_time' timestamp not null comment '秒杀结束时间',
'create_time' TIMESTAMP not null default current_timestamp comment '创建时间',
primary key (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)

)ENGINE=InnoDB auto_increment=1000 DEFAULT charset=utf8 comment="秒杀库存表"

--初始化数据

insert into
  seckill(name,number,start_time,end_time)
values
  ('1000元秒杀iphone',100,'2015-11-01 00:00:00','2015-11-2 00:00:00'),
  ('1000元秒杀ipad',100,'2015-11-03 00:00:00','2015-11-4 00:00:00'),
  ('1000元秒杀imac',100,'2015-11-04 00:00:00','2015-11-5 00:00:00'),
  ('1000元秒杀iwatch',100,'2015-11-05 00:00:00','2015-11-6 00:00:00');




create table success_killed(
'success_id' bigint not null comment '秒杀商品id',
'user_phone' bigint not null comment '用户手机号',
'state' tinyint not null default -1 comment '状态标识:-1 无效 0:成功 1:已付款',
'create_time' TIMESTAMP  not null comment '创建时间',
primary key (seckill_id,user_phone),/*联合主键*/
key idx_create_time(create_time)
)engine=InnoDB default charset=utf8 comment='秒杀成功明细表';


