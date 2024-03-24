package edu.scnu.lims.dao;

import edu.scnu.lims.entity.DeviceComment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeviceCommentDao extends JpaRepository<DeviceComment, Integer> {
}
