-- Create table
create table FP_TRADE
(
  id                        VARCHAR2(36) not null,
  version                   NUMBER(8) not null,
  create_time               TIMESTAMP(6) not null,
  update_time               TIMESTAMP(6) not null,
  seller_name               VARCHAR2(100),
  seller_tax_code           VARCHAR2(20),
  seller_address            VARCHAR2(85),
  seller_telephone          VARCHAR2(15),
  serial_no                 VARCHAR2(50),
  mer_order_id              VARCHAR2(50),
  goods_detail              CLOB
)
tablespace TS_NPFDB
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    next 4M
    minextents 1
    maxextents unlimited
  )
partition BY range
(
    create_time
)
interval
(
    NUMTODSINTERVAL(1,'DAY')
)
(
 PARTITION "FAPIAO_OLD" VALUES LESS THAN (TIMESTAMP '2018-04-18 00:00:00')
);

-- Add comments to the table
comment on table FP_TRADE
  is '错误信息表';
-- Add comments to the columns
comment on column FP_TRADE.id
  is '主键';
comment on column FP_TRADE.version
  is '版本号';
comment on column FP_TRADE.create_time
  is '创建时间';
comment on column FP_TRADE.update_time
  is '更新时间';
comment on column FP_TRADE.seller_name
  is '企业单位名称';
comment on column FP_TRADE.seller_tax_code
  is '企业单位代码';
comment on column FP_TRADE.seller_address
  is '企业地址';
comment on column FP_TRADE.seller_telephone
  is '企业电话';
comment on column FP_TRADE.serial_no
  is '交易流水号';
comment on column FP_TRADE.mer_order_id
  is '订单编号';
comment on column FP_TRADE.goods_detail
  is '商品明细';



-- Create/Recreate primary, unique and foreign key constraints
alter table FP_TRADE
  add constraint PK_FP_TRADE primary key (ID)
  using index
  tablespace TS_IDX_NPFDB
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    next 4M
    minextents 1
    maxextents unlimited
  );
alter index PK_FP_TRADE nologging;
