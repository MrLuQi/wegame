package com.game.pojo;

import java.math.BigDecimal;

public class Members {
	/*会员表*/
    private Integer mid;

    private String memberno; //会员账号

    private BigDecimal balance;//账户余额

    private String status="0";//账户状态  0表示静止登录 1表示允许登录

    public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	private String passpwd;//密码

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


  

	public String getPasspwd() {
        return passpwd;
    }

    public void setPasspwd(String passpwd) {
        this.passpwd = passpwd == null ? null : passpwd.trim();
    }
}