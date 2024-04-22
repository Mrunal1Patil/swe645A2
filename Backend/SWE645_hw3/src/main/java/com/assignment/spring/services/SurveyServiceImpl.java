package com.assignment.spring.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.assignment.spring.models.SurveyClass;
import com.assignment.spring.repositories.SurveyRepository;

@Service
public class SurveyServiceImpl {
    
    @Autowired
    private SurveyRepository srvyRepo;

    public List<SurveyClass> getAllSurveys() {
        List<SurveyClass> surv = new ArrayList<>();
        srvyRepo.findAll().forEach(surv::add);
        return surv;
    }

    public Optional<SurveyClass> getSurvey(String id) {
        return srvyRepo.findById(id);
    }

    public SurveyClass addSurvey(SurveyClass survey2) {
        return srvyRepo.save(survey2);
    }

    public boolean deleteSurvey(String id) {
        Optional<SurveyClass> existingSurvey = srvyRepo.findById(id);
        if (existingSurvey.isPresent()) {
            srvyRepo.deleteById(id);
            return true;
        } else {
            return false;
        }
    }


    public Optional<SurveyClass> updateSurvey(String id, SurveyClass updatedSurvey) {
    Optional<SurveyClass> existingSurvey = srvyRepo.findById(id);
    if (existingSurvey.isPresent()) {
       SurveyClass surveyToUpdate = existingSurvey.get();
        surveyToUpdate.setFname(updatedSurvey.getFname());
        surveyToUpdate.setLname(updatedSurvey.getLname());
        // Set other fields similarly...

       return Optional.of(srvyRepo.save(surveyToUpdate));
   } else {
       return Optional.empty(); // Survey with the given ID not found
   }
}


    
    
}
