package edu.scnu.lims.dao;


import edu.scnu.lims.entity.Laboratory;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LaboratoryDao extends JpaRepository<Laboratory,Integer> {
}
