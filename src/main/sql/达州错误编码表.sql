-- Create table
create table FP_ERROR
(
  id                        VARCHAR2(36) not null,
  version                   NUMBER(8) not null,
  create_time               TIMESTAMP(6) not null,
  update_time               TIMESTAMP(6) not null,
  error_code                VARCHAR2(8) not null,
  error_msg                 VARCHAR2(64) not null,
  status                    VARCHAR2(1),
  remark                    VARCHAR2(184)
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
comment on table FP_ERROR
  is '错误信息表';
-- Add comments to the columns
comment on column FP_ERROR.id
  is '主键';
comment on column FP_ERROR.version
  is '版本号';
comment on column FP_ERROR.create_time
  is '创建时间';
comment on column FP_ERROR.update_time
  is '更新时间';
comment on column FP_ERROR.error_code
  is '错误编码';
comment on column FP_ERROR.error_msg
  is '错误信息';
comment on column FP_ERROR.status
  is '当前状态';
comment on column FP_ERROR.remark
  is '备注';


-- Create/Recreate primary, unique and foreign key constraints
alter table FP_ERROR
  add constraint PK_FP_ERROR primary key (ID)
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
alter index PK_FP_ERROR nologging;
