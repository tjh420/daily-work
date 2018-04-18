-- Create table
create table FP_INVOICE_REPLACE
(
  id                        VARCHAR2(36) not null,
  version                   NUMBER(8) not null,
  create_time               TIMESTAMP(6) not null,
  update_time               TIMESTAMP(6) not null,

  seller_tax_no           VARCHAR2(20) not null,
  invoice_upload_type       VARCHAR2(1) default '1' not null,
  device_type               VARCHAR2(1) not null,
  invoice_type_code         VARCHAR2(3) not null,
  invoice_terminal_code     VARCHAR2(30) not null,
  invoice_list_mark         VARCHAR2(1) not null,
  push_channel_flag         VARCHAR2(10),
  app_id                    VARCHAR2(10),
  organization_code         VARCHAR2(64),
  serial_no                 VARCHAR2(50),

  mer_order_id              VARCHAR2(50),
  invoice_code              VARCHAR2(12),
  invoice_no                VARCHAR2(8),
  issue_date                VARCHAR2(14),
  invoice_check_code        VARCHAR2(50),
  invoice_qrCode            VARCHAR2(1200),
  tax_control_code          VARCHAR2(112),
  buyer_tax_code            VARCHAR2(20),
  buyer_name                VARCHAR2(100),
  buyer_address             VARCHAR2(85),

  buyer_telephone           VARCHAR2(15),
  buyer_bank                VARCHAR2(80),
  buyer_account             VARCHAR2(20),
  seller_name               VARCHAR2(100),
  seller_tax_code           VARCHAR2(20),
  seller_address            VARCHAR2(85),
  seller_telephone          VARCHAR2(15),
  seller_bank               VARCHAR2(80),
  seller_account            VARCHAR2(20),
  invoice_type              VARCHAR2(1),

  red_info_no               VARCHAR2(20),
  original_invoice_code     VARCHAR2(12),
  original_invoice_no       VARCHAR2(8),
  payee                     VARCHAR2(16),
  checker                   VARCHAR2(16),
  drawer                    VARCHAR2(16) not null,
  taxation_mode             VARCHAR2(1),
  deductible_amount         NUMBER(18,2),
  invoice_total_price       NUMBER(18,2),
  invoice_total_tax         NUMBER(18,2),

  invoice_total_price_tax   NUMBER(18,2),
  sign                      VARCHAR2(40) default '0000004282000000',
  tax_disk_no               VARCHAR2(12),
  tax_disk_key              VARCHAR2(8),
  tax_disk_password         VARCHAR2(16),
  goods_code_version        VARCHAR2(10),
  consolidated_tax_rate     VARCHAR2(5),
  notification_no           VARCHAR2(20),
  credentials_type          VARCHAR2(10),
  credentials_no            VARCHAR2(50),

  remark                    VARCHAR2(184),
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
 PARTITION "FAPIAO_OLD" VALUES LESS THAN (TIMESTAMP '2017-05-01 00:00:00')
);

-- Add comments to the table 
comment on table FP_INVOICE_REPLACE
  is '发票批量上传表';
-- Add comments to the columns 
comment on column FP_INVOICE_REPLACE.id
  is '主键';
comment on column FP_INVOICE_REPLACE.version
  is '版本号';
comment on column FP_INVOICE_REPLACE.create_time
  is '创建时间';
comment on column FP_INVOICE_REPLACE.update_time
  is '更新时间';

comment on column FP_INVOICE_REPLACE.seller_tax_no
  is '卖方纳税人识别号';
comment on column FP_INVOICE_REPLACE.invoice_upload_type
  is '上传类型 1: 代开数据上传(扫码开票,无购方四要素) 2：代开发票上传 3：已开发票上传 4、已开发票作废上传';
comment on column FP_INVOICE_REPLACE.device_type
  is '设备类型 0-税控服务器，1-税控盘，2-SIMKEY 3-其他';
comment on column FP_INVOICE_REPLACE.invoice_type_code
  is '发票种类编码';
comment on column FP_INVOICE_REPLACE.invoice_terminal_code
  is '开票点编码';
comment on column FP_INVOICE_REPLACE.invoice_list_mark
  is '清单标志： 0：无清单 1 ：带清单 发票明细大于等于8行必须带清单';
comment on column FP_INVOICE_REPLACE.push_channel_flag
  is '推送渠道标志';
comment on column FP_INVOICE_REPLACE.app_id
  is '渠道用户ID';
comment on column FP_INVOICE_REPLACE.organization_code
  is '组织机构代码，不为空表示所上传票归属于当前机构，为空表示所上传发票归属于税号所属机构';
comment on column FP_INVOICE_REPLACE.serial_no
  is '开票流水号';

comment on column FP_INVOICE_REPLACE.mer_order_id
  is '订单编号';
comment on column FP_INVOICE_REPLACE.invoice_code
  is '发票代码，已开上传必填';
comment on column FP_INVOICE_REPLACE.invoice_no
  is '发票号码，已开上传必填';
comment on column FP_INVOICE_REPLACE.issue_date
  is '开票日期，已开上传必填';
comment on column FP_INVOICE_REPLACE.invoice_check_code
  is '校验码，已开上传必填';
comment on column FP_INVOICE_REPLACE.invoice_qrCode
  is '二维码，已开上传必填';
comment on column FP_INVOICE_REPLACE.tax_control_code
  is '税控码';
comment on column FP_INVOICE_REPLACE.buyer_tax_code
  is '购方单位代码';
comment on column FP_INVOICE_REPLACE.buyer_name
  is '购方单位名称';
comment on column FP_INVOICE_REPLACE.buyer_address
  is '购方地址';

comment on column FP_INVOICE_REPLACE.buyer_telephone
  is '购方电话';
comment on column FP_INVOICE_REPLACE.buyer_bank
  is '购方开户行';
comment on column FP_INVOICE_REPLACE.buyer_account
  is '购方账号';
comment on column FP_INVOICE_REPLACE.seller_tax_code
  is '销方单位代码';
comment on column FP_INVOICE_REPLACE.seller_name
  is '销方单位名称';
comment on column FP_INVOICE_REPLACE.seller_address
  is '销方地址';
comment on column FP_INVOICE_REPLACE.seller_telephone
  is '销方电话';
comment on column FP_INVOICE_REPLACE.seller_bank
  is '销方开户行';
comment on column FP_INVOICE_REPLACE.seller_account
  is '销方账号';
comment on column FP_INVOICE_REPLACE.invoice_type
  is '开票类型0:正数发票（蓝票） 1：负数发票（红票）';

comment on column FP_INVOICE_REPLACE.red_info_no
  is '红字信息表编号';
comment on column FP_INVOICE_REPLACE.original_invoice_code
  is '原发票代码(开红票时传入)';
comment on column FP_INVOICE_REPLACE.original_invoice_no
  is '原发票号码(开红票时传入)';
comment on column FP_INVOICE_REPLACE.drawer
  is '开票人';
comment on column FP_INVOICE_REPLACE.checker
  is '复核人';
comment on column FP_INVOICE_REPLACE.payee
  is '收款人';
comment on column FP_INVOICE_REPLACE.taxation_mode
  is '征税方式 0：普通征税，2：差额征税';
comment on column FP_INVOICE_REPLACE.deductible_amount
  is '扣除额，保留两位小数';
comment on column FP_INVOICE_REPLACE.invoice_total_price
  is '合计金额，保留两位小数';
comment on column FP_INVOICE_REPLACE.invoice_total_tax
  is '合计税额，保留两位小数';

comment on column FP_INVOICE_REPLACE.invoice_total_price_tax
  is '价税合计，保留两位小数';
comment on column FP_INVOICE_REPLACE.sign
  is '签名值参数; 默认为：0000004282000000';
comment on column FP_INVOICE_REPLACE.tax_disk_no
  is '税控盘编号，设备类型为1时必填';
comment on column FP_INVOICE_REPLACE.tax_disk_key
  is '税控盘口令，设备类型为1时必填';
comment on column FP_INVOICE_REPLACE.tax_disk_password
  is '税务数字证书密码，设备类型为1时必填';
comment on column FP_INVOICE_REPLACE.goods_code_version
  is '商品编码版本号';
comment on column FP_INVOICE_REPLACE.consolidated_tax_rate
  is '综合税率';
comment on column FP_INVOICE_REPLACE.notification_no
  is '通知单编号';
comment on column FP_INVOICE_REPLACE.credentials_type
  is '证件类型，01-身份证、02-护照、03-军官证、04-士兵证、05-港澳居民来往内地通行证、06-台湾居民来往大陆通行证、07-其他';
comment on column FP_INVOICE_REPLACE.credentials_no
  is '证件号码';

comment on column FP_INVOICE_REPLACE.remark
  is '备注';
comment on column FP_INVOICE_REPLACE.goods_detail
  is '商品明细';

-- Create/Recreate primary, unique and foreign key constraints 
alter table FP_INVOICE_REPLACE
  add constraint PK_FP_INVOICE_REPLACE primary key (ID)
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
alter index PK_FP_INVOICE_REPLACE nologging;
