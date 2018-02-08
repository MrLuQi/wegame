package com.game.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Orders {
    private Integer oid;

    private Integer mid;//会员ID

    private String orderno;//注单号

    private String status;//注单状态

    private String hitflag;//是否中奖

    private String bigflag;//是否大额中奖

    private String ordertype;//注单类型

    private BigDecimal initamount;//注单原始金额

    private BigDecimal hitamount;//注单中奖金额

    private String orderdate;//投注时间

    private BigDecimal backamount;//退水金额

    private String bonusamount;//返点金额

    private String orderstatus;//下单数据

    private String periodno;//开奖期数

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno == null ? null : orderno.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getHitflag() {
        return hitflag;
    }

    public void setHitflag(String hitflag) {
        this.hitflag = hitflag == null ? null : hitflag.trim();
    }

    public String getBigflag() {
        return bigflag;
    }

    public void setBigflag(String bigflag) {
        this.bigflag = bigflag == null ? null : bigflag.trim();
    }

    public String getOrdertype() {
        return ordertype;
    }

    public void setOrdertype(String ordertype) {
        this.ordertype = ordertype == null ? null : ordertype.trim();
    }

    public BigDecimal getInitamount() {
        return initamount;
    }

    public void setInitamount(BigDecimal initamount) {
        this.initamount = initamount;
    }

    public BigDecimal getHitamount() {
        return hitamount;
    }

    public void setHitamount(BigDecimal hitamount) {
        this.hitamount = hitamount;
    }

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }

    public BigDecimal getBackamount() {
        return backamount;
    }

    public void setBackamount(BigDecimal backamount) {
        this.backamount = backamount;
    }

    public String getBonusamount() {
        return bonusamount;
    }

    public void setBonusamount(String bonusamount) {
        this.bonusamount = bonusamount == null ? null : bonusamount.trim();
    }

    public String getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(String orderstatus) {
        this.orderstatus = orderstatus == null ? null : orderstatus.trim();
    }

    public String getPeriodno() {
        return periodno;
    }

    public void setPeriodno(String periodno) {
        this.periodno = periodno == null ? null : periodno.trim();
    }
}