package com.performance.dashboard.model;

import java.util.ArrayList;
import java.util.List;

public class GroupData {
    private String name;
    private List<DetailData> detailDatas = new ArrayList<DetailData>();

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

	public List<DetailData> getDetailDatas() {
		return detailDatas;
	}

	public void setDetailDatas(List<DetailData> detailDatas) {
		this.detailDatas = detailDatas;
	}


}
