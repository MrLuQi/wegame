package com.game.pojo;

public class Building {
    private Integer uuid;

    private Integer code;

    private String name;

    private String type;

    private Integer parentuuid;

    private Integer isfile;
    public Building() {
	}
	

    public Integer getUuid() {
        return uuid;
    }

    public void setUuid(Integer uuid) {
        this.uuid = uuid;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getParentuuid() {
        return parentuuid;
    }

    public void setParentuuid(Integer parentuuid) {
        this.parentuuid = parentuuid;
    }

    public Integer getIsfile() {
        return isfile;
    }

    public void setIsfile(Integer isfile) {
        this.isfile = isfile;
    }
}