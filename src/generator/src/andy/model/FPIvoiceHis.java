package andy.model;

import java.math.BigDecimal;
import java.util.Date;

public class FPIvoiceHis {
    private String id;

    private Integer version;

    private Date createTime;

    private Date updateTime;

    private Date expireTime;

    private String issueSequence;

    private String qrCodeId;

    private String consumerId;

    private String status;

    private String invoiceMaterial;

    private String invoiceType;

    private String invoiceCode;

    private String invoiceNo;

    private String checkCode;

    private String deviceNo;

    private String cipherCode;

    private Date issueDate;

    private String merOrderId;

    private String merOrderDate;

    private String merchantId;

    private String terminalId;

    private String buyerName;

    private String buyerTaxCode;

    private String buyerAddress;

    private String buyerTelephone;

    private String buyerBank;

    private String buyerAccount;

    private String sellerName;

    private String sellerTaxCode;

    private String sellerAddress;

    private String sellerTelephone;

    private String sellerBank;

    private String sellerAccount;

    private String storeId;

    private String serviceProvider;

    private String spDeviceId;

    private String remark;

    private String payee;

    private String checker;

    private String drawer;

    private BigDecimal totalPriceIncludingTax;

    private BigDecimal totalTax;

    private BigDecimal totalPrice;

    private String reverseSequence;

    private Date reverseDate;

    private String msgType;

    private String errCode;

    private String errMsg;

    private String notifyUrl;

    private String notifyMobileNo;

    private String notifyEmail;

    private String source;

    private String subInst;

    private String merchantName;

    private String reverseInvoiceCode;

    private String reverseInvoiceNo;

    private String invalidSequence;

    private Date invalidDate;

    private String invalidInvoiceCode;

    private String invalidInvoiceNo;

    private String invalidPerson;

    private String extend1;

    private String extend2;

    private String traceId;

    private BigDecimal totalReversedAmount;

    private String reverseCheckCode;

    private String taxMethod;

    private BigDecimal deductionAmount;

    private String reverseCipherCode;

    private String noticeId;

    private String invoiceId;

    private String goodsDetail;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Date getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(Date expireTime) {
        this.expireTime = expireTime;
    }

    public String getIssueSequence() {
        return issueSequence;
    }

    public void setIssueSequence(String issueSequence) {
        this.issueSequence = issueSequence == null ? null : issueSequence.trim();
    }

    public String getQrCodeId() {
        return qrCodeId;
    }

    public void setQrCodeId(String qrCodeId) {
        this.qrCodeId = qrCodeId == null ? null : qrCodeId.trim();
    }

    public String getConsumerId() {
        return consumerId;
    }

    public void setConsumerId(String consumerId) {
        this.consumerId = consumerId == null ? null : consumerId.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getInvoiceMaterial() {
        return invoiceMaterial;
    }

    public void setInvoiceMaterial(String invoiceMaterial) {
        this.invoiceMaterial = invoiceMaterial == null ? null : invoiceMaterial.trim();
    }

    public String getInvoiceType() {
        return invoiceType;
    }

    public void setInvoiceType(String invoiceType) {
        this.invoiceType = invoiceType == null ? null : invoiceType.trim();
    }

    public String getInvoiceCode() {
        return invoiceCode;
    }

    public void setInvoiceCode(String invoiceCode) {
        this.invoiceCode = invoiceCode == null ? null : invoiceCode.trim();
    }

    public String getInvoiceNo() {
        return invoiceNo;
    }

    public void setInvoiceNo(String invoiceNo) {
        this.invoiceNo = invoiceNo == null ? null : invoiceNo.trim();
    }

    public String getCheckCode() {
        return checkCode;
    }

    public void setCheckCode(String checkCode) {
        this.checkCode = checkCode == null ? null : checkCode.trim();
    }

    public String getDeviceNo() {
        return deviceNo;
    }

    public void setDeviceNo(String deviceNo) {
        this.deviceNo = deviceNo == null ? null : deviceNo.trim();
    }

    public String getCipherCode() {
        return cipherCode;
    }

    public void setCipherCode(String cipherCode) {
        this.cipherCode = cipherCode == null ? null : cipherCode.trim();
    }

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public String getMerOrderId() {
        return merOrderId;
    }

    public void setMerOrderId(String merOrderId) {
        this.merOrderId = merOrderId == null ? null : merOrderId.trim();
    }

    public String getMerOrderDate() {
        return merOrderDate;
    }

    public void setMerOrderDate(String merOrderDate) {
        this.merOrderDate = merOrderDate == null ? null : merOrderDate.trim();
    }

    public String getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(String merchantId) {
        this.merchantId = merchantId == null ? null : merchantId.trim();
    }

    public String getTerminalId() {
        return terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId == null ? null : terminalId.trim();
    }

    public String getBuyerName() {
        return buyerName;
    }

    public void setBuyerName(String buyerName) {
        this.buyerName = buyerName == null ? null : buyerName.trim();
    }

    public String getBuyerTaxCode() {
        return buyerTaxCode;
    }

    public void setBuyerTaxCode(String buyerTaxCode) {
        this.buyerTaxCode = buyerTaxCode == null ? null : buyerTaxCode.trim();
    }

    public String getBuyerAddress() {
        return buyerAddress;
    }

    public void setBuyerAddress(String buyerAddress) {
        this.buyerAddress = buyerAddress == null ? null : buyerAddress.trim();
    }

    public String getBuyerTelephone() {
        return buyerTelephone;
    }

    public void setBuyerTelephone(String buyerTelephone) {
        this.buyerTelephone = buyerTelephone == null ? null : buyerTelephone.trim();
    }

    public String getBuyerBank() {
        return buyerBank;
    }

    public void setBuyerBank(String buyerBank) {
        this.buyerBank = buyerBank == null ? null : buyerBank.trim();
    }

    public String getBuyerAccount() {
        return buyerAccount;
    }

    public void setBuyerAccount(String buyerAccount) {
        this.buyerAccount = buyerAccount == null ? null : buyerAccount.trim();
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName == null ? null : sellerName.trim();
    }

    public String getSellerTaxCode() {
        return sellerTaxCode;
    }

    public void setSellerTaxCode(String sellerTaxCode) {
        this.sellerTaxCode = sellerTaxCode == null ? null : sellerTaxCode.trim();
    }

    public String getSellerAddress() {
        return sellerAddress;
    }

    public void setSellerAddress(String sellerAddress) {
        this.sellerAddress = sellerAddress == null ? null : sellerAddress.trim();
    }

    public String getSellerTelephone() {
        return sellerTelephone;
    }

    public void setSellerTelephone(String sellerTelephone) {
        this.sellerTelephone = sellerTelephone == null ? null : sellerTelephone.trim();
    }

    public String getSellerBank() {
        return sellerBank;
    }

    public void setSellerBank(String sellerBank) {
        this.sellerBank = sellerBank == null ? null : sellerBank.trim();
    }

    public String getSellerAccount() {
        return sellerAccount;
    }

    public void setSellerAccount(String sellerAccount) {
        this.sellerAccount = sellerAccount == null ? null : sellerAccount.trim();
    }

    public String getStoreId() {
        return storeId;
    }

    public void setStoreId(String storeId) {
        this.storeId = storeId == null ? null : storeId.trim();
    }

    public String getServiceProvider() {
        return serviceProvider;
    }

    public void setServiceProvider(String serviceProvider) {
        this.serviceProvider = serviceProvider == null ? null : serviceProvider.trim();
    }

    public String getSpDeviceId() {
        return spDeviceId;
    }

    public void setSpDeviceId(String spDeviceId) {
        this.spDeviceId = spDeviceId == null ? null : spDeviceId.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getPayee() {
        return payee;
    }

    public void setPayee(String payee) {
        this.payee = payee == null ? null : payee.trim();
    }

    public String getChecker() {
        return checker;
    }

    public void setChecker(String checker) {
        this.checker = checker == null ? null : checker.trim();
    }

    public String getDrawer() {
        return drawer;
    }

    public void setDrawer(String drawer) {
        this.drawer = drawer == null ? null : drawer.trim();
    }

    public BigDecimal getTotalPriceIncludingTax() {
        return totalPriceIncludingTax;
    }

    public void setTotalPriceIncludingTax(BigDecimal totalPriceIncludingTax) {
        this.totalPriceIncludingTax = totalPriceIncludingTax;
    }

    public BigDecimal getTotalTax() {
        return totalTax;
    }

    public void setTotalTax(BigDecimal totalTax) {
        this.totalTax = totalTax;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getReverseSequence() {
        return reverseSequence;
    }

    public void setReverseSequence(String reverseSequence) {
        this.reverseSequence = reverseSequence == null ? null : reverseSequence.trim();
    }

    public Date getReverseDate() {
        return reverseDate;
    }

    public void setReverseDate(Date reverseDate) {
        this.reverseDate = reverseDate;
    }

    public String getMsgType() {
        return msgType;
    }

    public void setMsgType(String msgType) {
        this.msgType = msgType == null ? null : msgType.trim();
    }

    public String getErrCode() {
        return errCode;
    }

    public void setErrCode(String errCode) {
        this.errCode = errCode == null ? null : errCode.trim();
    }

    public String getErrMsg() {
        return errMsg;
    }

    public void setErrMsg(String errMsg) {
        this.errMsg = errMsg == null ? null : errMsg.trim();
    }

    public String getNotifyUrl() {
        return notifyUrl;
    }

    public void setNotifyUrl(String notifyUrl) {
        this.notifyUrl = notifyUrl == null ? null : notifyUrl.trim();
    }

    public String getNotifyMobileNo() {
        return notifyMobileNo;
    }

    public void setNotifyMobileNo(String notifyMobileNo) {
        this.notifyMobileNo = notifyMobileNo == null ? null : notifyMobileNo.trim();
    }

    public String getNotifyEmail() {
        return notifyEmail;
    }

    public void setNotifyEmail(String notifyEmail) {
        this.notifyEmail = notifyEmail == null ? null : notifyEmail.trim();
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public String getSubInst() {
        return subInst;
    }

    public void setSubInst(String subInst) {
        this.subInst = subInst == null ? null : subInst.trim();
    }

    public String getMerchantName() {
        return merchantName;
    }

    public void setMerchantName(String merchantName) {
        this.merchantName = merchantName == null ? null : merchantName.trim();
    }

    public String getReverseInvoiceCode() {
        return reverseInvoiceCode;
    }

    public void setReverseInvoiceCode(String reverseInvoiceCode) {
        this.reverseInvoiceCode = reverseInvoiceCode == null ? null : reverseInvoiceCode.trim();
    }

    public String getReverseInvoiceNo() {
        return reverseInvoiceNo;
    }

    public void setReverseInvoiceNo(String reverseInvoiceNo) {
        this.reverseInvoiceNo = reverseInvoiceNo == null ? null : reverseInvoiceNo.trim();
    }

    public String getInvalidSequence() {
        return invalidSequence;
    }

    public void setInvalidSequence(String invalidSequence) {
        this.invalidSequence = invalidSequence == null ? null : invalidSequence.trim();
    }

    public Date getInvalidDate() {
        return invalidDate;
    }

    public void setInvalidDate(Date invalidDate) {
        this.invalidDate = invalidDate;
    }

    public String getInvalidInvoiceCode() {
        return invalidInvoiceCode;
    }

    public void setInvalidInvoiceCode(String invalidInvoiceCode) {
        this.invalidInvoiceCode = invalidInvoiceCode == null ? null : invalidInvoiceCode.trim();
    }

    public String getInvalidInvoiceNo() {
        return invalidInvoiceNo;
    }

    public void setInvalidInvoiceNo(String invalidInvoiceNo) {
        this.invalidInvoiceNo = invalidInvoiceNo == null ? null : invalidInvoiceNo.trim();
    }

    public String getInvalidPerson() {
        return invalidPerson;
    }

    public void setInvalidPerson(String invalidPerson) {
        this.invalidPerson = invalidPerson == null ? null : invalidPerson.trim();
    }

    public String getExtend1() {
        return extend1;
    }

    public void setExtend1(String extend1) {
        this.extend1 = extend1 == null ? null : extend1.trim();
    }

    public String getExtend2() {
        return extend2;
    }

    public void setExtend2(String extend2) {
        this.extend2 = extend2 == null ? null : extend2.trim();
    }

    public String getTraceId() {
        return traceId;
    }

    public void setTraceId(String traceId) {
        this.traceId = traceId == null ? null : traceId.trim();
    }

    public BigDecimal getTotalReversedAmount() {
        return totalReversedAmount;
    }

    public void setTotalReversedAmount(BigDecimal totalReversedAmount) {
        this.totalReversedAmount = totalReversedAmount;
    }

    public String getReverseCheckCode() {
        return reverseCheckCode;
    }

    public void setReverseCheckCode(String reverseCheckCode) {
        this.reverseCheckCode = reverseCheckCode == null ? null : reverseCheckCode.trim();
    }

    public String getTaxMethod() {
        return taxMethod;
    }

    public void setTaxMethod(String taxMethod) {
        this.taxMethod = taxMethod == null ? null : taxMethod.trim();
    }

    public BigDecimal getDeductionAmount() {
        return deductionAmount;
    }

    public void setDeductionAmount(BigDecimal deductionAmount) {
        this.deductionAmount = deductionAmount;
    }

    public String getReverseCipherCode() {
        return reverseCipherCode;
    }

    public void setReverseCipherCode(String reverseCipherCode) {
        this.reverseCipherCode = reverseCipherCode == null ? null : reverseCipherCode.trim();
    }

    public String getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(String noticeId) {
        this.noticeId = noticeId == null ? null : noticeId.trim();
    }

    public String getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(String invoiceId) {
        this.invoiceId = invoiceId == null ? null : invoiceId.trim();
    }

    public String getGoodsDetail() {
        return goodsDetail;
    }

    public void setGoodsDetail(String goodsDetail) {
        this.goodsDetail = goodsDetail == null ? null : goodsDetail.trim();
    }
}