-- Create table
create table FP_INVOICE
(
  id                        VARCHAR2(36) not null,
  version                   NUMBER(8) not null,
  create_time               TIMESTAMP(6) not null,
  update_time               TIMESTAMP(6) not null,
  expire_time               TIMESTAMP(6),
  issue_sequence            VARCHAR2(20),
  qr_code_id                VARCHAR2(64) not null,
  consumer_id               VARCHAR2(36),
  status                    VARCHAR2(16) default 'PENDING' not null,
  invoice_material          VARCHAR2(16) not null,
  invoice_type              VARCHAR2(16) not null,
  invoice_code              VARCHAR2(16),
  invoice_no                VARCHAR2(16),
  check_code                VARCHAR2(20),
  device_no                 VARCHAR2(64),
  cipher_code               VARCHAR2(512),
  issue_date                DATE,
  mer_order_id              VARCHAR2(32),
  mer_order_date            VARCHAR2(8),
  merchant_id               VARCHAR2(32),
  terminal_id               VARCHAR2(20),
  buyer_name                VARCHAR2(256),
  buyer_tax_code            VARCHAR2(64),
  buyer_address             VARCHAR2(256),
  buyer_telephone           VARCHAR2(32),
  buyer_bank                VARCHAR2(128),
  buyer_account             VARCHAR2(32),
  seller_name               VARCHAR2(256),
  seller_tax_code           VARCHAR2(64),
  seller_address            VARCHAR2(256),
  seller_telephone          VARCHAR2(32),
  seller_bank               VARCHAR2(128),
  seller_account            VARCHAR2(32),
  store_id                  VARCHAR2(32),
  service_provider          VARCHAR2(32),
  sp_device_id              VARCHAR2(32),
  remark                    VARCHAR2(256),
  payee                     VARCHAR2(64),
  checker                   VARCHAR2(64),
  drawer                    VARCHAR2(64),
  total_price_including_tax NUMBER(18,8),
  total_tax                 NUMBER(18,8),
  total_price               NUMBER(18,8),
  reverse_sequence          VARCHAR2(20),
  reverse_date              DATE,
  msg_type                  VARCHAR2(32) not null,
  err_code                  VARCHAR2(32),
  err_msg                   VARCHAR2(512),
  notify_url                VARCHAR2(256),
  notify_mobile_no          VARCHAR2(16),
  notify_email              VARCHAR2(128),
  source                    VARCHAR2(32) not null,
  sub_inst                  VARCHAR2(16),
  merchant_name             VARCHAR2(256),
  reverse_invoice_code      VARCHAR2(16),
  reverse_invoice_no        VARCHAR2(16),
  invalid_sequence          VARCHAR2(20),
  invalid_date              DATE,
  invalid_invoice_code      VARCHAR2(16),
  invalid_invoice_no        VARCHAR2(16),
  invalid_person            VARCHAR2(64),
  extend1                   VARCHAR2(1536),
  extend2                   VARCHAR2(1536),
  trace_id                  VARCHAR2(32),
  total_reversed_amount     NUMBER(18,8),
  reverse_check_code        VARCHAR2(20),
  goods_detail              CLOB,
  tax_method                VARCHAR2(16),
  deduction_amount          NUMBER(18,8),
  reverse_cipher_code       VARCHAR2(512),
  notice_id                 VARCHAR2(16),
  invoice_id                VARCHAR2(16)
)
partition by range (CREATE_TIME)
(
  partition FAPIAO_OLD values less than (TIMESTAMP' 2017-05-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147691 values less than (TIMESTAMP' 2017-06-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79761 values less than (TIMESTAMP' 2017-06-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79762 values less than (TIMESTAMP' 2017-06-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79763 values less than (TIMESTAMP' 2017-06-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79764 values less than (TIMESTAMP' 2017-06-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79765 values less than (TIMESTAMP' 2017-06-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79766 values less than (TIMESTAMP' 2017-06-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79767 values less than (TIMESTAMP' 2017-06-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79768 values less than (TIMESTAMP' 2017-06-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79769 values less than (TIMESTAMP' 2017-06-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79770 values less than (TIMESTAMP' 2017-06-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79771 values less than (TIMESTAMP' 2017-06-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79772 values less than (TIMESTAMP' 2017-06-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79773 values less than (TIMESTAMP' 2017-06-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79774 values less than (TIMESTAMP' 2017-07-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79775 values less than (TIMESTAMP' 2017-07-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79776 values less than (TIMESTAMP' 2017-07-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79724 values less than (TIMESTAMP' 2017-07-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79840 values less than (TIMESTAMP' 2017-07-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79877 values less than (TIMESTAMP' 2017-07-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79934 values less than (TIMESTAMP' 2017-07-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79963 values less than (TIMESTAMP' 2017-07-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80004 values less than (TIMESTAMP' 2017-07-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80036 values less than (TIMESTAMP' 2017-07-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80078 values less than (TIMESTAMP' 2017-07-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80088 values less than (TIMESTAMP' 2017-07-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80104 values less than (TIMESTAMP' 2017-07-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80113 values less than (TIMESTAMP' 2017-07-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80172 values less than (TIMESTAMP' 2017-07-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80291 values less than (TIMESTAMP' 2017-07-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80431 values less than (TIMESTAMP' 2017-07-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80515 values less than (TIMESTAMP' 2017-07-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P85011 values less than (TIMESTAMP' 2017-07-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P87931 values less than (TIMESTAMP' 2017-07-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88075 values less than (TIMESTAMP' 2017-07-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88137 values less than (TIMESTAMP' 2017-07-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88194 values less than (TIMESTAMP' 2017-07-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88918 values less than (TIMESTAMP' 2017-07-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88950 values less than (TIMESTAMP' 2017-07-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88964 values less than (TIMESTAMP' 2017-07-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88978 values less than (TIMESTAMP' 2017-08-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89019 values less than (TIMESTAMP' 2017-08-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89720 values less than (TIMESTAMP' 2017-08-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89791 values less than (TIMESTAMP' 2017-08-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89866 values less than (TIMESTAMP' 2017-08-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89879 values less than (TIMESTAMP' 2017-08-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89899 values less than (TIMESTAMP' 2017-08-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89930 values less than (TIMESTAMP' 2017-08-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89977 values less than (TIMESTAMP' 2017-08-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90016 values less than (TIMESTAMP' 2017-08-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90058 values less than (TIMESTAMP' 2017-08-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90465 values less than (TIMESTAMP' 2017-08-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90489 values less than (TIMESTAMP' 2017-08-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90520 values less than (TIMESTAMP' 2017-08-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90542 values less than (TIMESTAMP' 2017-08-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90570 values less than (TIMESTAMP' 2017-08-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90604 values less than (TIMESTAMP' 2017-08-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90640 values less than (TIMESTAMP' 2017-08-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P97773 values less than (TIMESTAMP' 2017-08-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P97787 values less than (TIMESTAMP' 2017-08-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P108883 values less than (TIMESTAMP' 2017-08-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118103 values less than (TIMESTAMP' 2017-08-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118135 values less than (TIMESTAMP' 2017-08-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118176 values less than (TIMESTAMP' 2017-08-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118220 values less than (TIMESTAMP' 2017-08-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118246 values less than (TIMESTAMP' 2017-08-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118275 values less than (TIMESTAMP' 2017-08-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118319 values less than (TIMESTAMP' 2017-08-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120311 values less than (TIMESTAMP' 2017-08-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120351 values less than (TIMESTAMP' 2017-09-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120419 values less than (TIMESTAMP' 2017-09-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120455 values less than (TIMESTAMP' 2017-09-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120502 values less than (TIMESTAMP' 2017-09-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120536 values less than (TIMESTAMP' 2017-09-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120587 values less than (TIMESTAMP' 2017-09-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120650 values less than (TIMESTAMP' 2017-09-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120693 values less than (TIMESTAMP' 2017-09-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120725 values less than (TIMESTAMP' 2017-09-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120760 values less than (TIMESTAMP' 2017-09-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120819 values less than (TIMESTAMP' 2017-09-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120863 values less than (TIMESTAMP' 2017-09-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120924 values less than (TIMESTAMP' 2017-09-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120962 values less than (TIMESTAMP' 2017-09-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121014 values less than (TIMESTAMP' 2017-09-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121034 values less than (TIMESTAMP' 2017-09-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121067 values less than (TIMESTAMP' 2017-09-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121151 values less than (TIMESTAMP' 2017-09-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121212 values less than (TIMESTAMP' 2017-09-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121258 values less than (TIMESTAMP' 2017-09-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121299 values less than (TIMESTAMP' 2017-09-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121325 values less than (TIMESTAMP' 2017-09-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121876 values less than (TIMESTAMP' 2017-09-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121930 values less than (TIMESTAMP' 2017-09-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121957 values less than (TIMESTAMP' 2017-09-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P128082 values less than (TIMESTAMP' 2017-10-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134089 values less than (TIMESTAMP' 2017-10-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P122132 values less than (TIMESTAMP' 2017-10-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P124949 values less than (TIMESTAMP' 2017-10-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P125314 values less than (TIMESTAMP' 2017-10-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P125351 values less than (TIMESTAMP' 2017-10-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P125373 values less than (TIMESTAMP' 2017-10-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P126906 values less than (TIMESTAMP' 2017-10-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P126932 values less than (TIMESTAMP' 2017-10-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P127486 values less than (TIMESTAMP' 2017-10-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P127521 values less than (TIMESTAMP' 2017-10-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P128054 values less than (TIMESTAMP' 2017-10-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P128999 values less than (TIMESTAMP' 2017-10-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P129780 values less than (TIMESTAMP' 2017-10-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134095 values less than (TIMESTAMP' 2017-10-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134790 values less than (TIMESTAMP' 2017-10-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134814 values less than (TIMESTAMP' 2017-10-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134863 values less than (TIMESTAMP' 2017-10-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134889 values less than (TIMESTAMP' 2017-10-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134923 values less than (TIMESTAMP' 2017-10-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134961 values less than (TIMESTAMP' 2017-11-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135152 values less than (TIMESTAMP' 2017-11-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135199 values less than (TIMESTAMP' 2017-11-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135236 values less than (TIMESTAMP' 2017-11-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135267 values less than (TIMESTAMP' 2017-11-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135289 values less than (TIMESTAMP' 2017-11-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135310 values less than (TIMESTAMP' 2017-11-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135342 values less than (TIMESTAMP' 2017-11-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135395 values less than (TIMESTAMP' 2017-11-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135462 values less than (TIMESTAMP' 2017-11-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135501 values less than (TIMESTAMP' 2017-11-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135535 values less than (TIMESTAMP' 2017-11-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135565 values less than (TIMESTAMP' 2017-11-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135589 values less than (TIMESTAMP' 2017-11-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135706 values less than (TIMESTAMP' 2017-11-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135755 values less than (TIMESTAMP' 2017-11-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135795 values less than (TIMESTAMP' 2017-11-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135832 values less than (TIMESTAMP' 2017-11-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135863 values less than (TIMESTAMP' 2017-11-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135890 values less than (TIMESTAMP' 2017-11-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135916 values less than (TIMESTAMP' 2017-11-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135961 values less than (TIMESTAMP' 2017-11-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136013 values less than (TIMESTAMP' 2017-11-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136051 values less than (TIMESTAMP' 2017-11-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136075 values less than (TIMESTAMP' 2017-11-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136329 values less than (TIMESTAMP' 2017-11-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136136 values less than (TIMESTAMP' 2017-11-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136185 values less than (TIMESTAMP' 2017-11-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136277 values less than (TIMESTAMP' 2017-12-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136295 values less than (TIMESTAMP' 2017-12-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120977 values less than (TIMESTAMP' 2017-12-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136401 values less than (TIMESTAMP' 2017-12-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136431 values less than (TIMESTAMP' 2017-12-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136469 values less than (TIMESTAMP' 2017-12-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136544 values less than (TIMESTAMP' 2017-12-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136577 values less than (TIMESTAMP' 2017-12-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136657 values less than (TIMESTAMP' 2017-12-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137036 values less than (TIMESTAMP' 2017-12-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137093 values less than (TIMESTAMP' 2017-12-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137126 values less than (TIMESTAMP' 2017-12-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137179 values less than (TIMESTAMP' 2017-12-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137266 values less than (TIMESTAMP' 2017-12-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137301 values less than (TIMESTAMP' 2017-12-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141019 values less than (TIMESTAMP' 2017-12-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141075 values less than (TIMESTAMP' 2017-12-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141150 values less than (TIMESTAMP' 2017-12-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141201 values less than (TIMESTAMP' 2017-12-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141226 values less than (TIMESTAMP' 2017-12-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141258 values less than (TIMESTAMP' 2017-12-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121193 values less than (TIMESTAMP' 2017-12-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141359 values less than (TIMESTAMP' 2017-12-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141394 values less than (TIMESTAMP' 2017-12-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141499 values less than (TIMESTAMP' 2018-01-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141541 values less than (TIMESTAMP' 2018-01-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141584 values less than (TIMESTAMP' 2018-01-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141642 values less than (TIMESTAMP' 2018-01-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141661 values less than (TIMESTAMP' 2018-01-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141708 values less than (TIMESTAMP' 2018-01-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141747 values less than (TIMESTAMP' 2018-01-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141798 values less than (TIMESTAMP' 2018-01-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141833 values less than (TIMESTAMP' 2018-01-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141873 values less than (TIMESTAMP' 2018-01-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142983 values less than (TIMESTAMP' 2018-01-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142977 values less than (TIMESTAMP' 2018-01-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142003 values less than (TIMESTAMP' 2018-01-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142136 values less than (TIMESTAMP' 2018-01-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141930 values less than (TIMESTAMP' 2018-01-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142966 values less than (TIMESTAMP' 2018-01-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142284 values less than (TIMESTAMP' 2018-01-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142278 values less than (TIMESTAMP' 2018-01-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142272 values less than (TIMESTAMP' 2018-01-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142266 values less than (TIMESTAMP' 2018-01-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142260 values less than (TIMESTAMP' 2018-01-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142254 values less than (TIMESTAMP' 2018-01-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142248 values less than (TIMESTAMP' 2018-01-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142241 values less than (TIMESTAMP' 2018-01-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142235 values less than (TIMESTAMP' 2018-01-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142229 values less than (TIMESTAMP' 2018-01-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142223 values less than (TIMESTAMP' 2018-01-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142217 values less than (TIMESTAMP' 2018-01-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141924 values less than (TIMESTAMP' 2018-02-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142172 values less than (TIMESTAMP' 2018-02-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142166 values less than (TIMESTAMP' 2018-02-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142160 values less than (TIMESTAMP' 2018-02-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142082 values less than (TIMESTAMP' 2018-02-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142088 values less than (TIMESTAMP' 2018-02-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142094 values less than (TIMESTAMP' 2018-02-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142154 values less than (TIMESTAMP' 2018-02-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142148 values less than (TIMESTAMP' 2018-02-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142142 values less than (TIMESTAMP' 2018-02-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142128 values less than (TIMESTAMP' 2018-02-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142121 values less than (TIMESTAMP' 2018-02-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142073 values less than (TIMESTAMP' 2018-02-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142067 values less than (TIMESTAMP' 2018-02-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142061 values less than (TIMESTAMP' 2018-02-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142055 values less than (TIMESTAMP' 2018-02-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142048 values less than (TIMESTAMP' 2018-02-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142042 values less than (TIMESTAMP' 2018-02-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142036 values less than (TIMESTAMP' 2018-02-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142030 values less than (TIMESTAMP' 2018-02-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142024 values less than (TIMESTAMP' 2018-02-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142211 values less than (TIMESTAMP' 2018-02-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142018 values less than (TIMESTAMP' 2018-02-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141918 values less than (TIMESTAMP' 2018-02-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141911 values less than (TIMESTAMP' 2018-02-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141905 values less than (TIMESTAMP' 2018-02-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141862 values less than (TIMESTAMP' 2018-02-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141846 values less than (TIMESTAMP' 2018-02-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P145648 values less than (TIMESTAMP' 2018-03-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142363 values less than (TIMESTAMP' 2018-03-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142357 values less than (TIMESTAMP' 2018-03-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142351 values less than (TIMESTAMP' 2018-03-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142323 values less than (TIMESTAMP' 2018-03-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142317 values less than (TIMESTAMP' 2018-03-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142311 values less than (TIMESTAMP' 2018-03-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142305 values less than (TIMESTAMP' 2018-03-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142299 values less than (TIMESTAMP' 2018-03-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142293 values less than (TIMESTAMP' 2018-03-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143149 values less than (TIMESTAMP' 2018-03-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143143 values less than (TIMESTAMP' 2018-03-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143137 values less than (TIMESTAMP' 2018-03-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143131 values less than (TIMESTAMP' 2018-03-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143125 values less than (TIMESTAMP' 2018-03-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143119 values less than (TIMESTAMP' 2018-03-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143113 values less than (TIMESTAMP' 2018-03-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143107 values less than (TIMESTAMP' 2018-03-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143101 values less than (TIMESTAMP' 2018-03-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143095 values less than (TIMESTAMP' 2018-03-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143089 values less than (TIMESTAMP' 2018-03-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143083 values less than (TIMESTAMP' 2018-03-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143077 values less than (TIMESTAMP' 2018-03-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143071 values less than (TIMESTAMP' 2018-03-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143065 values less than (TIMESTAMP' 2018-03-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143059 values less than (TIMESTAMP' 2018-03-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143053 values less than (TIMESTAMP' 2018-03-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143047 values less than (TIMESTAMP' 2018-03-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143041 values less than (TIMESTAMP' 2018-03-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142995 values less than (TIMESTAMP' 2018-03-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147436 values less than (TIMESTAMP' 2018-03-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147469 values less than (TIMESTAMP' 2018-04-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143010 values less than (TIMESTAMP' 2018-04-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143032 values less than (TIMESTAMP' 2018-04-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143004 values less than (TIMESTAMP' 2018-04-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147677 values less than (TIMESTAMP' 2018-04-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147721 values less than (TIMESTAMP' 2018-04-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147768 values less than (TIMESTAMP' 2018-04-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147794 values less than (TIMESTAMP' 2018-04-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147843 values less than (TIMESTAMP' 2018-04-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147880 values less than (TIMESTAMP' 2018-04-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147944 values less than (TIMESTAMP' 2018-04-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121941 values less than (TIMESTAMP' 2019-09-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121978 values less than (TIMESTAMP' 2019-09-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121972 values less than (TIMESTAMP' 2019-09-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135243 values less than (TIMESTAMP' 2019-10-01 00:00:00')
    tablespace TS_FAPIAO_TAB
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
);
-- Add comments to the table 
comment on table FP_INVOICE
  is '发票表';
-- Add comments to the columns 
comment on column FP_INVOICE.id
  is '主键';
comment on column FP_INVOICE.version
  is '版本号';
comment on column FP_INVOICE.create_time
  is '创建时间';
comment on column FP_INVOICE.update_time
  is '更新时间';
comment on column FP_INVOICE.expire_time
  is '开票二维码过期时间';
comment on column FP_INVOICE.issue_sequence
  is '开具流水号';
comment on column FP_INVOICE.qr_code_id
  is '二维码唯一ID，目前是24位';
comment on column FP_INVOICE.consumer_id
  is '购方唯一ID';
comment on column FP_INVOICE.status
  is '发票状态：待开具 PENDING、开具中ISSUING、已开具 ISSUED、已红冲 REVERSED
、已放弃 ABORTED';
comment on column FP_INVOICE.invoice_material
  is '发票材质：纸质发票PAPER, 电子发票ELECTRONIC';
comment on column FP_INVOICE.invoice_type
  is '发票类型，普通发票PLAIN，增值税专用发票VAT';
comment on column FP_INVOICE.invoice_code
  is '发票代码';
comment on column FP_INVOICE.invoice_no
  is '发票号码';
comment on column FP_INVOICE.check_code
  is '发票校验码';
comment on column FP_INVOICE.device_no
  is '机器编码';
comment on column FP_INVOICE.cipher_code
  is '密码区';
comment on column FP_INVOICE.issue_date
  is '开票日期';
comment on column FP_INVOICE.mer_order_id
  is '商户订单号';
comment on column FP_INVOICE.mer_order_date
  is '商户订单日期';
comment on column FP_INVOICE.merchant_id
  is '商户号';
comment on column FP_INVOICE.terminal_id
  is '终端号';
comment on column FP_INVOICE.buyer_name
  is '买方名称';
comment on column FP_INVOICE.buyer_tax_code
  is '买方纳税人识别号';
comment on column FP_INVOICE.buyer_address
  is '买方地址';
comment on column FP_INVOICE.buyer_telephone
  is '买方电话';
comment on column FP_INVOICE.buyer_bank
  is '买方开户行';
comment on column FP_INVOICE.buyer_account
  is '买方账号';
comment on column FP_INVOICE.seller_name
  is '卖方名称';
comment on column FP_INVOICE.seller_tax_code
  is '卖方纳税人识别号';
comment on column FP_INVOICE.seller_address
  is '卖方地址';
comment on column FP_INVOICE.seller_telephone
  is '卖方电话';
comment on column FP_INVOICE.seller_bank
  is '卖方开户行';
comment on column FP_INVOICE.seller_account
  is '卖方账号';
comment on column FP_INVOICE.store_id
  is '门店编号';
comment on column FP_INVOICE.service_provider
  is '发票服务提供商';
comment on column FP_INVOICE.sp_device_id
  is '商户终端在服务商端的设备号，对应购阿购的storeid';
comment on column FP_INVOICE.remark
  is '备注，可填写房间号或桌号';
comment on column FP_INVOICE.payee
  is '收款人';
comment on column FP_INVOICE.checker
  is '复核人';
comment on column FP_INVOICE.drawer
  is '开票人';
comment on column FP_INVOICE.total_price_including_tax
  is '含税总金额，单位为元';
comment on column FP_INVOICE.total_tax
  is '税额，单位为元';
comment on column FP_INVOICE.total_price
  is '不含税总金额，单位为元';
comment on column FP_INVOICE.reverse_sequence
  is '红冲流水号';
comment on column FP_INVOICE.reverse_date
  is '红冲日期';
comment on column FP_INVOICE.msg_type
  is '消息类型';
comment on column FP_INVOICE.err_code
  is '失败错误码。中间状态、CLOSED状态，一般会填充失败原因';
comment on column FP_INVOICE.err_msg
  is '失败错误描述';
comment on column FP_INVOICE.notify_url
  is '开票成功后的通知服务器URL';
comment on column FP_INVOICE.notify_mobile_no
  is '开票成功后的通知手机号，用于发送短信';
comment on column FP_INVOICE.notify_email
  is '开票成功后的通知电子邮箱';
comment on column FP_INVOICE.source
  is '来源系统，例如浙江OSS、PORTAL、ULINK、TEST';
comment on column FP_INVOICE.sub_inst
  is '商户所属分支机构代码';
comment on column FP_INVOICE.merchant_name
  is '商户名称';
comment on column FP_INVOICE.reverse_invoice_code
  is '红票的发票代码';
comment on column FP_INVOICE.reverse_invoice_no
  is '红票的发票号码';
comment on column FP_INVOICE.invalid_sequence
  is '作废流水号';
comment on column FP_INVOICE.invalid_date
  is '作废日期';
comment on column FP_INVOICE.invalid_invoice_code
  is '作废的发票代码';
comment on column FP_INVOICE.invalid_invoice_no
  is '作废的发票号码';
comment on column FP_INVOICE.invalid_person
  is '作废人';
comment on column FP_INVOICE.extend1
  is '扩展字段1';
comment on column FP_INVOICE.extend2
  is '扩展字段2';
comment on column FP_INVOICE.trace_id
  is '日志跟踪号';
comment on column FP_INVOICE.reverse_check_code
  is '红票校验码';
comment on column FP_INVOICE.goods_detail
  is '商品明细';
comment on column FP_INVOICE.tax_method
  is '征税方式，NORMAL：普通征税，DEDUCTION：差额征税';
comment on column FP_INVOICE.deduction_amount
  is '扣除额，差额征税';
comment on column FP_INVOICE.reverse_cipher_code
  is '红票密码区';
comment on column FP_INVOICE.notice_id
  is '航信开票申请返回的唯一标识';
comment on column FP_INVOICE.invoice_id
  is '航信推送返回的发票唯一标识';
-- Create/Recreate indexes 
create index IDX_INVOICE_CODE on FP_INVOICE (INVOICE_CODE, INVOICE_NO)
  nologging  local;
create index IDX_INVOICE_MERORDER on FP_INVOICE (MERCHANT_ID, TERMINAL_ID, MER_ORDER_DATE, MER_ORDER_ID)
  nologging  local;
create index IDX_INVOICE_NOTICE_ID on FP_INVOICE (NOTICE_ID)
  nologging  local;
create index IDX_INVOICE_QRCODEID on FP_INVOICE (QR_CODE_ID)
  nologging  local;
create index IDX_INVOICE_REVERSE_CODE on FP_INVOICE (REVERSE_INVOICE_CODE, REVERSE_INVOICE_NO)
  nologging  local;
-- Create/Recreate primary, unique and foreign key constraints 
alter table FP_INVOICE
  add constraint PK_FP_INVOICE primary key (ID)
  using index 
  tablespace TS_FAPIAO_IDX
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
alter index PK_FP_INVOICE nologging;
