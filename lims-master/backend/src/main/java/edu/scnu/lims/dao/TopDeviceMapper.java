package edu.scnu.lims.dao;

import edu.scnu.lims.entity.TopDevice;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TopDeviceMapper {
    List<TopDevice> getTopDevice();
}
