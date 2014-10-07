package com.performance.dashboard.model;

import java.util.ArrayList;
import java.util.List;

public class GeneralData {
    private String platform;

    private List<GroupData> groupDatas = new ArrayList<GroupData>();

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public String getPlatform() {
        return platform;
    }

    public List<GroupData> getGroupDatas() {
        return groupDatas;
    }

    public void setGroupDatas(List<GroupData> groupDatas) {
        this.groupDatas = groupDatas;
    }

    public String toString() {
        StringBuilder perfData = new StringBuilder();
        perfData.append("OS name is:" + platform);
        perfData.append("\n");
        for (GroupData groupData : groupDatas) {
            perfData.append("==group name is:" + groupData.getName() + "\n");
            for (DetailData scenarioData : groupData.getDetailDatas()) {
                perfData.append("====Scenario name is:" + scenarioData.getName() + "\n");
                perfData.append("=======BenchMark is:" + scenarioData.getBenchmark() + "\n");
                perfData.append("=======Current is:" + scenarioData.getPerformance() + "\n");
            }
        }

        return perfData.toString();
    }

}
