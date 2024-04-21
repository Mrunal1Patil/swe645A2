package com.assignment.spring.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.assignment.spring.models.SurveyClass;

@Repository
public interface SurveyRepository extends CrudRepository<SurveyClass, String> {
	
	Iterable<SurveyClass> findAll();
	SurveyClass save(SurveyClass survey);
	
}
