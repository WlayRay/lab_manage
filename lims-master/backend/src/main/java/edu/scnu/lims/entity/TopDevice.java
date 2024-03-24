package edu.scnu.lims.entity;

import lombok.Data;

@Data
public class TopDevice {
    private Integer deviceId;
    private String deviceName;
    private String laboratoryName;
    private Integer applyCount;
}
