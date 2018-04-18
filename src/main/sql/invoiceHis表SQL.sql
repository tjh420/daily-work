-- Create table
create table FP_INVOICE_HIS
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
  partition SYS_P79777 values less than (TIMESTAMP' 2017-05-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79778 values less than (TIMESTAMP' 2017-05-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79779 values less than (TIMESTAMP' 2017-05-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79780 values less than (TIMESTAMP' 2017-05-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79781 values less than (TIMESTAMP' 2017-05-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79782 values less than (TIMESTAMP' 2017-05-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79783 values less than (TIMESTAMP' 2017-05-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79784 values less than (TIMESTAMP' 2017-05-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79785 values less than (TIMESTAMP' 2017-05-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79786 values less than (TIMESTAMP' 2017-05-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79787 values less than (TIMESTAMP' 2017-05-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79788 values less than (TIMESTAMP' 2017-05-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79789 values less than (TIMESTAMP' 2017-05-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79790 values less than (TIMESTAMP' 2017-05-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79791 values less than (TIMESTAMP' 2017-05-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79792 values less than (TIMESTAMP' 2017-05-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79793 values less than (TIMESTAMP' 2017-05-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79794 values less than (TIMESTAMP' 2017-05-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79795 values less than (TIMESTAMP' 2017-05-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79796 values less than (TIMESTAMP' 2017-05-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79797 values less than (TIMESTAMP' 2017-05-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79798 values less than (TIMESTAMP' 2017-05-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79799 values less than (TIMESTAMP' 2017-05-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79800 values less than (TIMESTAMP' 2017-06-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79801 values less than (TIMESTAMP' 2017-06-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79802 values less than (TIMESTAMP' 2017-06-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79803 values less than (TIMESTAMP' 2017-06-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79804 values less than (TIMESTAMP' 2017-06-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79805 values less than (TIMESTAMP' 2017-06-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79806 values less than (TIMESTAMP' 2017-06-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79807 values less than (TIMESTAMP' 2017-06-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79808 values less than (TIMESTAMP' 2017-06-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79809 values less than (TIMESTAMP' 2017-06-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79810 values less than (TIMESTAMP' 2017-06-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79811 values less than (TIMESTAMP' 2017-06-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79812 values less than (TIMESTAMP' 2017-06-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79813 values less than (TIMESTAMP' 2017-06-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79814 values less than (TIMESTAMP' 2017-06-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79815 values less than (TIMESTAMP' 2017-06-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79816 values less than (TIMESTAMP' 2017-06-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79817 values less than (TIMESTAMP' 2017-06-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79818 values less than (TIMESTAMP' 2017-06-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79819 values less than (TIMESTAMP' 2017-06-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79820 values less than (TIMESTAMP' 2017-06-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79821 values less than (TIMESTAMP' 2017-06-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79822 values less than (TIMESTAMP' 2017-06-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79823 values less than (TIMESTAMP' 2017-06-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79824 values less than (TIMESTAMP' 2017-06-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79825 values less than (TIMESTAMP' 2017-07-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79826 values less than (TIMESTAMP' 2017-07-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79827 values less than (TIMESTAMP' 2017-07-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79725 values less than (TIMESTAMP' 2017-07-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79841 values less than (TIMESTAMP' 2017-07-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79878 values less than (TIMESTAMP' 2017-07-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79935 values less than (TIMESTAMP' 2017-07-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P79964 values less than (TIMESTAMP' 2017-07-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80005 values less than (TIMESTAMP' 2017-07-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80037 values less than (TIMESTAMP' 2017-07-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80079 values less than (TIMESTAMP' 2017-07-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80089 values less than (TIMESTAMP' 2017-07-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80105 values less than (TIMESTAMP' 2017-07-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80114 values less than (TIMESTAMP' 2017-07-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80173 values less than (TIMESTAMP' 2017-07-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80292 values less than (TIMESTAMP' 2017-07-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80432 values less than (TIMESTAMP' 2017-07-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P80516 values less than (TIMESTAMP' 2017-07-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P85012 values less than (TIMESTAMP' 2017-07-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P87932 values less than (TIMESTAMP' 2017-07-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88076 values less than (TIMESTAMP' 2017-07-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88138 values less than (TIMESTAMP' 2017-07-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88195 values less than (TIMESTAMP' 2017-07-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88919 values less than (TIMESTAMP' 2017-07-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88951 values less than (TIMESTAMP' 2017-07-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88965 values less than (TIMESTAMP' 2017-07-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P88979 values less than (TIMESTAMP' 2017-08-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89020 values less than (TIMESTAMP' 2017-08-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89721 values less than (TIMESTAMP' 2017-08-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89792 values less than (TIMESTAMP' 2017-08-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89867 values less than (TIMESTAMP' 2017-08-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89880 values less than (TIMESTAMP' 2017-08-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89900 values less than (TIMESTAMP' 2017-08-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89931 values less than (TIMESTAMP' 2017-08-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P89978 values less than (TIMESTAMP' 2017-08-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90017 values less than (TIMESTAMP' 2017-08-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90059 values less than (TIMESTAMP' 2017-08-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90468 values less than (TIMESTAMP' 2017-08-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90492 values less than (TIMESTAMP' 2017-08-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90523 values less than (TIMESTAMP' 2017-08-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90545 values less than (TIMESTAMP' 2017-08-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90573 values less than (TIMESTAMP' 2017-08-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90607 values less than (TIMESTAMP' 2017-08-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P90643 values less than (TIMESTAMP' 2017-08-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P97776 values less than (TIMESTAMP' 2017-08-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P97790 values less than (TIMESTAMP' 2017-08-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P108886 values less than (TIMESTAMP' 2017-08-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118106 values less than (TIMESTAMP' 2017-08-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118138 values less than (TIMESTAMP' 2017-08-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118179 values less than (TIMESTAMP' 2017-08-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118223 values less than (TIMESTAMP' 2017-08-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118249 values less than (TIMESTAMP' 2017-08-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118278 values less than (TIMESTAMP' 2017-08-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P118322 values less than (TIMESTAMP' 2017-08-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120314 values less than (TIMESTAMP' 2017-08-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120354 values less than (TIMESTAMP' 2017-09-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120422 values less than (TIMESTAMP' 2017-09-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120458 values less than (TIMESTAMP' 2017-09-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120505 values less than (TIMESTAMP' 2017-09-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120539 values less than (TIMESTAMP' 2017-09-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120590 values less than (TIMESTAMP' 2017-09-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120653 values less than (TIMESTAMP' 2017-09-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120696 values less than (TIMESTAMP' 2017-09-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120728 values less than (TIMESTAMP' 2017-09-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120763 values less than (TIMESTAMP' 2017-09-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120822 values less than (TIMESTAMP' 2017-09-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120866 values less than (TIMESTAMP' 2017-09-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120927 values less than (TIMESTAMP' 2017-09-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120965 values less than (TIMESTAMP' 2017-09-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121017 values less than (TIMESTAMP' 2017-09-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121037 values less than (TIMESTAMP' 2017-09-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121070 values less than (TIMESTAMP' 2017-09-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121154 values less than (TIMESTAMP' 2017-09-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121175 values less than (TIMESTAMP' 2017-09-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121215 values less than (TIMESTAMP' 2017-09-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121261 values less than (TIMESTAMP' 2017-09-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121302 values less than (TIMESTAMP' 2017-09-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121328 values less than (TIMESTAMP' 2017-09-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121879 values less than (TIMESTAMP' 2017-09-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121933 values less than (TIMESTAMP' 2017-09-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121960 values less than (TIMESTAMP' 2017-09-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P122014 values less than (TIMESTAMP' 2017-10-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P128085 values less than (TIMESTAMP' 2017-10-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134092 values less than (TIMESTAMP' 2017-10-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P122135 values less than (TIMESTAMP' 2017-10-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P124952 values less than (TIMESTAMP' 2017-10-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P125317 values less than (TIMESTAMP' 2017-10-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P125354 values less than (TIMESTAMP' 2017-10-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P125376 values less than (TIMESTAMP' 2017-10-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P126909 values less than (TIMESTAMP' 2017-10-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P126935 values less than (TIMESTAMP' 2017-10-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P127489 values less than (TIMESTAMP' 2017-10-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P127524 values less than (TIMESTAMP' 2017-10-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P128057 values less than (TIMESTAMP' 2017-10-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P129002 values less than (TIMESTAMP' 2017-10-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P129783 values less than (TIMESTAMP' 2017-10-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134098 values less than (TIMESTAMP' 2017-10-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134793 values less than (TIMESTAMP' 2017-10-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134817 values less than (TIMESTAMP' 2017-10-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134866 values less than (TIMESTAMP' 2017-10-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134892 values less than (TIMESTAMP' 2017-10-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134926 values less than (TIMESTAMP' 2017-10-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P134964 values less than (TIMESTAMP' 2017-11-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135155 values less than (TIMESTAMP' 2017-11-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135202 values less than (TIMESTAMP' 2017-11-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135239 values less than (TIMESTAMP' 2017-11-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135270 values less than (TIMESTAMP' 2017-11-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135292 values less than (TIMESTAMP' 2017-11-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135313 values less than (TIMESTAMP' 2017-11-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135345 values less than (TIMESTAMP' 2017-11-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135398 values less than (TIMESTAMP' 2017-11-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135465 values less than (TIMESTAMP' 2017-11-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135504 values less than (TIMESTAMP' 2017-11-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135538 values less than (TIMESTAMP' 2017-11-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135568 values less than (TIMESTAMP' 2017-11-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135592 values less than (TIMESTAMP' 2017-11-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135709 values less than (TIMESTAMP' 2017-11-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135758 values less than (TIMESTAMP' 2017-11-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135798 values less than (TIMESTAMP' 2017-11-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135835 values less than (TIMESTAMP' 2017-11-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135866 values less than (TIMESTAMP' 2017-11-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135893 values less than (TIMESTAMP' 2017-11-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135919 values less than (TIMESTAMP' 2017-11-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135964 values less than (TIMESTAMP' 2017-11-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136016 values less than (TIMESTAMP' 2017-11-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136054 values less than (TIMESTAMP' 2017-11-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136078 values less than (TIMESTAMP' 2017-11-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136332 values less than (TIMESTAMP' 2017-11-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136139 values less than (TIMESTAMP' 2017-11-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136188 values less than (TIMESTAMP' 2017-11-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136227 values less than (TIMESTAMP' 2017-11-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136280 values less than (TIMESTAMP' 2017-12-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136298 values less than (TIMESTAMP' 2017-12-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P120980 values less than (TIMESTAMP' 2017-12-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136404 values less than (TIMESTAMP' 2017-12-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136434 values less than (TIMESTAMP' 2017-12-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136472 values less than (TIMESTAMP' 2017-12-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136547 values less than (TIMESTAMP' 2017-12-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136580 values less than (TIMESTAMP' 2017-12-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P136660 values less than (TIMESTAMP' 2017-12-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137039 values less than (TIMESTAMP' 2017-12-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137096 values less than (TIMESTAMP' 2017-12-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137129 values less than (TIMESTAMP' 2017-12-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137182 values less than (TIMESTAMP' 2017-12-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137269 values less than (TIMESTAMP' 2017-12-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P137304 values less than (TIMESTAMP' 2017-12-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141022 values less than (TIMESTAMP' 2017-12-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141078 values less than (TIMESTAMP' 2017-12-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141153 values less than (TIMESTAMP' 2017-12-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141204 values less than (TIMESTAMP' 2017-12-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141229 values less than (TIMESTAMP' 2017-12-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141261 values less than (TIMESTAMP' 2017-12-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121196 values less than (TIMESTAMP' 2017-12-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141362 values less than (TIMESTAMP' 2017-12-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141397 values less than (TIMESTAMP' 2017-12-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141502 values less than (TIMESTAMP' 2018-01-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141544 values less than (TIMESTAMP' 2018-01-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141587 values less than (TIMESTAMP' 2018-01-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141645 values less than (TIMESTAMP' 2018-01-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141664 values less than (TIMESTAMP' 2018-01-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141711 values less than (TIMESTAMP' 2018-01-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141750 values less than (TIMESTAMP' 2018-01-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141801 values less than (TIMESTAMP' 2018-01-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141836 values less than (TIMESTAMP' 2018-01-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141876 values less than (TIMESTAMP' 2018-01-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142986 values less than (TIMESTAMP' 2018-01-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142980 values less than (TIMESTAMP' 2018-01-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142006 values less than (TIMESTAMP' 2018-01-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142139 values less than (TIMESTAMP' 2018-01-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141933 values less than (TIMESTAMP' 2018-01-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142969 values less than (TIMESTAMP' 2018-01-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142287 values less than (TIMESTAMP' 2018-01-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142281 values less than (TIMESTAMP' 2018-01-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142275 values less than (TIMESTAMP' 2018-01-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142269 values less than (TIMESTAMP' 2018-01-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142263 values less than (TIMESTAMP' 2018-01-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142257 values less than (TIMESTAMP' 2018-01-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142251 values less than (TIMESTAMP' 2018-01-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142244 values less than (TIMESTAMP' 2018-01-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142238 values less than (TIMESTAMP' 2018-01-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142232 values less than (TIMESTAMP' 2018-01-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142226 values less than (TIMESTAMP' 2018-01-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142220 values less than (TIMESTAMP' 2018-01-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141927 values less than (TIMESTAMP' 2018-02-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142175 values less than (TIMESTAMP' 2018-02-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142169 values less than (TIMESTAMP' 2018-02-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142163 values less than (TIMESTAMP' 2018-02-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142085 values less than (TIMESTAMP' 2018-02-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142091 values less than (TIMESTAMP' 2018-02-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142097 values less than (TIMESTAMP' 2018-02-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142157 values less than (TIMESTAMP' 2018-02-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142151 values less than (TIMESTAMP' 2018-02-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142145 values less than (TIMESTAMP' 2018-02-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142131 values less than (TIMESTAMP' 2018-02-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142124 values less than (TIMESTAMP' 2018-02-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142076 values less than (TIMESTAMP' 2018-02-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142070 values less than (TIMESTAMP' 2018-02-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142064 values less than (TIMESTAMP' 2018-02-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142058 values less than (TIMESTAMP' 2018-02-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142051 values less than (TIMESTAMP' 2018-02-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142045 values less than (TIMESTAMP' 2018-02-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142039 values less than (TIMESTAMP' 2018-02-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142033 values less than (TIMESTAMP' 2018-02-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142027 values less than (TIMESTAMP' 2018-02-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142214 values less than (TIMESTAMP' 2018-02-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142021 values less than (TIMESTAMP' 2018-02-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141921 values less than (TIMESTAMP' 2018-02-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141914 values less than (TIMESTAMP' 2018-02-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141908 values less than (TIMESTAMP' 2018-02-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141865 values less than (TIMESTAMP' 2018-02-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P141849 values less than (TIMESTAMP' 2018-02-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P145651 values less than (TIMESTAMP' 2018-03-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142366 values less than (TIMESTAMP' 2018-03-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142360 values less than (TIMESTAMP' 2018-03-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142354 values less than (TIMESTAMP' 2018-03-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142326 values less than (TIMESTAMP' 2018-03-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142320 values less than (TIMESTAMP' 2018-03-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142314 values less than (TIMESTAMP' 2018-03-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142308 values less than (TIMESTAMP' 2018-03-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142302 values less than (TIMESTAMP' 2018-03-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142296 values less than (TIMESTAMP' 2018-03-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143152 values less than (TIMESTAMP' 2018-03-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143146 values less than (TIMESTAMP' 2018-03-12 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143140 values less than (TIMESTAMP' 2018-03-13 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143134 values less than (TIMESTAMP' 2018-03-14 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143128 values less than (TIMESTAMP' 2018-03-15 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143122 values less than (TIMESTAMP' 2018-03-16 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143116 values less than (TIMESTAMP' 2018-03-17 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143110 values less than (TIMESTAMP' 2018-03-18 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143104 values less than (TIMESTAMP' 2018-03-19 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143098 values less than (TIMESTAMP' 2018-03-20 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143092 values less than (TIMESTAMP' 2018-03-21 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143086 values less than (TIMESTAMP' 2018-03-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143080 values less than (TIMESTAMP' 2018-03-23 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143074 values less than (TIMESTAMP' 2018-03-24 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143068 values less than (TIMESTAMP' 2018-03-25 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143062 values less than (TIMESTAMP' 2018-03-26 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143056 values less than (TIMESTAMP' 2018-03-27 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143050 values less than (TIMESTAMP' 2018-03-28 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143044 values less than (TIMESTAMP' 2018-03-29 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P142998 values less than (TIMESTAMP' 2018-03-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147439 values less than (TIMESTAMP' 2018-03-31 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147472 values less than (TIMESTAMP' 2018-04-01 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143013 values less than (TIMESTAMP' 2018-04-02 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143035 values less than (TIMESTAMP' 2018-04-03 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P143007 values less than (TIMESTAMP' 2018-04-04 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147680 values less than (TIMESTAMP' 2018-04-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147724 values less than (TIMESTAMP' 2018-04-06 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147771 values less than (TIMESTAMP' 2018-04-07 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147797 values less than (TIMESTAMP' 2018-04-08 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147846 values less than (TIMESTAMP' 2018-04-09 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147883 values less than (TIMESTAMP' 2018-04-10 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P147947 values less than (TIMESTAMP' 2018-04-11 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121944 values less than (TIMESTAMP' 2019-09-05 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121981 values less than (TIMESTAMP' 2019-09-22 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P121975 values less than (TIMESTAMP' 2019-09-30 00:00:00')
    tablespace TS_FAPIAO_TAB
    pctfree 10
    initrans 2
    maxtrans 255
    storage
    (
      initial 4M
      next 4M
      minextents 1
      maxextents unlimited
    ),
  partition SYS_P135246 values less than (TIMESTAMP' 2019-10-01 00:00:00')
    tablespace TS_FAPIAO_TAB
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
comment on table FP_INVOICE_HIS
  is '发票后线表';
-- Add comments to the columns 
comment on column FP_INVOICE_HIS.id
  is '主键';
comment on column FP_INVOICE_HIS.version
  is '版本号';
comment on column FP_INVOICE_HIS.create_time
  is '创建时间';
comment on column FP_INVOICE_HIS.update_time
  is '更新时间';
comment on column FP_INVOICE_HIS.expire_time
  is '开票二维码过期时间';
comment on column FP_INVOICE_HIS.issue_sequence
  is '开具流水号';
comment on column FP_INVOICE_HIS.qr_code_id
  is '二维码唯一ID，目前是24位';
comment on column FP_INVOICE_HIS.consumer_id
  is '购方唯一ID';
comment on column FP_INVOICE_HIS.status
  is '发票状态：待开具 PENDING、开具中ISSUING、已开具 ISSUED、已红冲 REVERSED
、已放弃 ABORTED';
comment on column FP_INVOICE_HIS.invoice_material
  is '发票材质：纸质发票PAPER, 电子发票ELECTRONIC';
comment on column FP_INVOICE_HIS.invoice_type
  is '发票类型，普通发票PLAIN，增值税专用发票VAT';
comment on column FP_INVOICE_HIS.invoice_code
  is '发票代码';
comment on column FP_INVOICE_HIS.invoice_no
  is '发票号码';
comment on column FP_INVOICE_HIS.check_code
  is '发票校验码';
comment on column FP_INVOICE_HIS.device_no
  is '机器编码';
comment on column FP_INVOICE_HIS.cipher_code
  is '密码区';
comment on column FP_INVOICE_HIS.issue_date
  is '开票日期';
comment on column FP_INVOICE_HIS.mer_order_id
  is '商户订单号';
comment on column FP_INVOICE_HIS.mer_order_date
  is '商户订单日期';
comment on column FP_INVOICE_HIS.merchant_id
  is '商户号';
comment on column FP_INVOICE_HIS.terminal_id
  is '终端号';
comment on column FP_INVOICE_HIS.buyer_name
  is '买方名称';
comment on column FP_INVOICE_HIS.buyer_tax_code
  is '买方纳税人识别号';
comment on column FP_INVOICE_HIS.buyer_address
  is '买方地址';
comment on column FP_INVOICE_HIS.buyer_telephone
  is '买方电话';
comment on column FP_INVOICE_HIS.buyer_bank
  is '买方开户行';
comment on column FP_INVOICE_HIS.buyer_account
  is '买方账号';
comment on column FP_INVOICE_HIS.seller_name
  is '卖方名称';
comment on column FP_INVOICE_HIS.seller_tax_code
  is '卖方纳税人识别号';
comment on column FP_INVOICE_HIS.seller_address
  is '卖方地址';
comment on column FP_INVOICE_HIS.seller_telephone
  is '卖方电话';
comment on column FP_INVOICE_HIS.seller_bank
  is '卖方开户行';
comment on column FP_INVOICE_HIS.seller_account
  is '卖方账号';
comment on column FP_INVOICE_HIS.store_id
  is '门店编号';
comment on column FP_INVOICE_HIS.service_provider
  is '发票服务提供商';
comment on column FP_INVOICE_HIS.sp_device_id
  is '商户终端在服务商端的设备号，对应购阿购的storeid';
comment on column FP_INVOICE_HIS.remark
  is '备注，可填写房间号或桌号';
comment on column FP_INVOICE_HIS.payee
  is '收款人';
comment on column FP_INVOICE_HIS.checker
  is '复核人';
comment on column FP_INVOICE_HIS.drawer
  is '开票人';
comment on column FP_INVOICE_HIS.total_price_including_tax
  is '含税总金额，单位为元';
comment on column FP_INVOICE_HIS.total_tax
  is '税额，单位为元';
comment on column FP_INVOICE_HIS.total_price
  is '不含税总金额，单位为元';
comment on column FP_INVOICE_HIS.reverse_sequence
  is '红冲流水号';
comment on column FP_INVOICE_HIS.reverse_date
  is '红冲日期';
comment on column FP_INVOICE_HIS.msg_type
  is '消息类型';
comment on column FP_INVOICE_HIS.err_code
  is '失败错误码。中间状态、CLOSED状态，一般会填充失败原因';
comment on column FP_INVOICE_HIS.err_msg
  is '失败错误描述';
comment on column FP_INVOICE_HIS.notify_url
  is '开票成功后的通知服务器URL';
comment on column FP_INVOICE_HIS.notify_mobile_no
  is '开票成功后的通知手机号，用于发送短信';
comment on column FP_INVOICE_HIS.notify_email
  is '开票成功后的通知电子邮箱';
comment on column FP_INVOICE_HIS.source
  is '来源系统，例如浙江OSS、PORTAL、ULINK、TEST';
comment on column FP_INVOICE_HIS.sub_inst
  is '商户所属分支机构代码';
comment on column FP_INVOICE_HIS.merchant_name
  is '商户名称';
comment on column FP_INVOICE_HIS.reverse_invoice_code
  is '红票的发票代码';
comment on column FP_INVOICE_HIS.reverse_invoice_no
  is '红票的发票号码';
comment on column FP_INVOICE_HIS.invalid_sequence
  is '作废流水号';
comment on column FP_INVOICE_HIS.invalid_date
  is '作废日期';
comment on column FP_INVOICE_HIS.invalid_invoice_code
  is '作废的发票代码';
comment on column FP_INVOICE_HIS.invalid_invoice_no
  is '作废的发票号码';
comment on column FP_INVOICE_HIS.invalid_person
  is '作废人';
comment on column FP_INVOICE_HIS.extend1
  is '扩展字段1';
comment on column FP_INVOICE_HIS.extend2
  is '扩展字段2';
comment on column FP_INVOICE_HIS.trace_id
  is '日志跟踪号';
comment on column FP_INVOICE_HIS.total_reversed_amount
  is '已红冲总金额，单位为元';
comment on column FP_INVOICE_HIS.reverse_check_code
  is '红票校验码';
comment on column FP_INVOICE_HIS.goods_detail
  is '商品明细';
comment on column FP_INVOICE_HIS.tax_method
  is '征税方式，NORMAL：普通征税，DEDUCTION：差额征税';
comment on column FP_INVOICE_HIS.deduction_amount
  is '扣除额，差额征税';
comment on column FP_INVOICE_HIS.reverse_cipher_code
  is '红票密码区';
comment on column FP_INVOICE_HIS.notice_id
  is '航信开票申请返回的唯一标识';
comment on column FP_INVOICE_HIS.invoice_id
  is '航信推送返回的发票唯一标识';
-- Create/Recreate indexes 
create index IDX_INVOICE_HIS_CODE on FP_INVOICE_HIS (INVOICE_CODE, INVOICE_NO)
  nologging  local;
create index IDX_INVOICE_HIS_CONSUMERID on FP_INVOICE_HIS (CONSUMER_ID)
  nologging  local;
create index IDX_INVOICE_HIS_MATERIAL_TYPE on FP_INVOICE_HIS (INVOICE_MATERIAL, INVOICE_TYPE)
  nologging  local;
create index IDX_INVOICE_HIS_MERORDER on FP_INVOICE_HIS (MERCHANT_ID, TERMINAL_ID, MER_ORDER_DATE, MER_ORDER_ID)
  nologging  local;
create index IDX_INVOICE_HIS_NOTICE_ID on FP_INVOICE_HIS (NOTICE_ID)
  nologging  local;
create index IDX_INVOICE_HIS_PROVIDER on FP_INVOICE_HIS (SERVICE_PROVIDER)
  nologging  local;
create index IDX_INVOICE_HIS_QRCODEID on FP_INVOICE_HIS (QR_CODE_ID)
  nologging  local;
create index IDX_INVOICE_HIS_REVERSE_CODE on FP_INVOICE_HIS (REVERSE_INVOICE_CODE, REVERSE_INVOICE_NO)
  nologging  local;
create index IDX_INVOICE_HIS_SOURCE on FP_INVOICE_HIS (SOURCE)
  nologging  local;
create index IDX_INVOICE_HIS_SUBINST on FP_INVOICE_HIS (SUB_INST)
  nologging  local;
-- Create/Recreate primary, unique and foreign key constraints 
alter table FP_INVOICE_HIS
  add constraint PK_FP_INVOICE_HIS primary key (ID)
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
alter index PK_FP_INVOICE_HIS nologging;
