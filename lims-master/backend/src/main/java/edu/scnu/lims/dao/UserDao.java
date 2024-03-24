package edu.scnu.lims.dao;

import edu.scnu.lims.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User, Integer> {
}
