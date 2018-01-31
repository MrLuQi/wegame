package com.game.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Cashapply {
    private Integer cid;

    private Integer mid;

    private Date getdate;

    private BigDecimal applyamount;

    private String status;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public Date getGetdate() {
        return getdate;
    }

    public void setGetdate(Date getdate) {
        this.getdate = getdate;
    }

    public BigDecimal getApplyamount() {
        return applyamount;
    }

    public void setApplyamount(BigDecimal applyamount) {
        this.applyamount = applyamount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}