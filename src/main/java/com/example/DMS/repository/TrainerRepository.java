package com.example.DMS.repository;

import org.springframework.data.repository.CrudRepository;
import com.example.DMS.Models.Trainer;

public interface TrainerRepository extends CrudRepository<Trainer, Integer> {
    // You can add custom query methods here if needed
}

	