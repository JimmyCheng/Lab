package com.performance.dashboard.model;

import java.util.ArrayList;
import java.util.List;

public class TrendData {
    private int id;
    private List<Integer> trends = new ArrayList<Integer>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Integer> getTrends() {
        return trends;
    }

    public void setTrends(List<Integer> trends) {
        this.trends = trends;
    }

}
