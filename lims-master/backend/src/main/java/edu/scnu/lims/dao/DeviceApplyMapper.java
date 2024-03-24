package edu.scnu.lims.dao;

import edu.scnu.lims.entity.DeviceApply;
import edu.scnu.lims.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DeviceApplyMapper {
    List<DeviceApply> findDeviceApply(User user);
}
