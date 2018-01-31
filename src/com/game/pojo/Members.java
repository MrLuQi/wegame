package com.game.pojo;

import java.math.BigDecimal;

public class Members {
    private Integer mid;

    private String memberno;

    private BigDecimal balance;

    private String status;

    private String passpwd;

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMemberno() {
        return memberno;
    }

    public void setMemberno(String memberno) {
        this.memberno = memberno == null ? null : memberno.trim();
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getPasspwd() {
        return passpwd;
    }

    public void setPasspwd(String passpwd) {
        this.passpwd = passpwd == null ? null : passpwd.trim();
    }
}