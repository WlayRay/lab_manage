package edu.scnu.lims.dao;

import edu.scnu.lims.entity.DeviceRecord;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeviceRecordDao extends JpaRepository<DeviceRecord, Integer> {
}
