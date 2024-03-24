package edu.scnu.lims.dao;

import edu.scnu.lims.entity.RemindObject;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScheduleTaskMapper {

    List<RemindObject> getRemindRecord();

    List<RemindObject> getRemindReturn();
}
