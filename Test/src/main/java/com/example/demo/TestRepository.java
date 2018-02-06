package com.example.demo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface TestRepository extends CrudRepository<Test, Long> {

	@Transactional
	@Query(value="select * from test_details where id=?1",nativeQuery=true)
    public List<Test> findById(long id);

}
