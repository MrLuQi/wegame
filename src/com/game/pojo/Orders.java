package com.game.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Orders {
    private Integer oid;

    private Integer mid;

    private String orderno;

    private String status;

    private String hitflag;

    private String bigflag;

    private String ordertype;

    private BigDecimal initamount;

    private BigDecimal hitamount;

    private Date orderdate;

    private BigDecimal backamount;

    private String bonusamount;

    private String orderstatus;

    private String periodno;

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

    public Date getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Date orderdate) {
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