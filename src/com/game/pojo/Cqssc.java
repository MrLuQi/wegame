package com.game.pojo;

import java.util.Date;

public class Cqssc {
    private String periodno;

    private Date opendate;

    private Integer num1;

    private Integer num2;

    private Integer num3;

    private Integer num4;

    private Integer num5;

    private Integer totalnum;

    public String getPeriodno() {
        return periodno;
    }

    public void setPeriodno(String periodno) {
        this.periodno = periodno == null ? null : periodno.trim();
    }

    public Date getOpendate() {
        return opendate;
    }

    public void setOpendate(Date opendate) {
        this.opendate = opendate;
    }

    public Integer getNum1() {
        return num1;
    }

    public void setNum1(Integer num1) {
        this.num1 = num1;
    }

    public Integer getNum2() {
        return num2;
    }

    public void setNum2(Integer num2) {
        this.num2 = num2;
    }

    public Integer getNum3() {
        return num3;
    }

    public void setNum3(Integer num3) {
        this.num3 = num3;
    }

    public Integer getNum4() {
        return num4;
    }

    public void setNum4(Integer num4) {
        this.num4 = num4;
    }

    public Integer getNum5() {
        return num5;
    }

    public void setNum5(Integer num5) {
        this.num5 = num5;
    }

    public Integer getTotalnum() {
        return totalnum;
    }

    public void setTotalnum(Integer totalnum) {
        this.totalnum = totalnum;
    }
}