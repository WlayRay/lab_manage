package edu.scnu.lims.entity;

import lombok.Data;

import javax.persistence.Entity;
import java.io.Serializable;

@Data
public class RemindObject implements Serializable {
    private String email;
    private String deviceName;
}
