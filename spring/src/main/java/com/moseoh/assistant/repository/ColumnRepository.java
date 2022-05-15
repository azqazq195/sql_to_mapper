package com.moseoh.assistant.repository;

import com.moseoh.assistant.entity.MColumn;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ColumnRepository extends JpaRepository<MColumn, Long> {
    public MColumn findByNameAndMtableId(String name, Long mtableId);

    public MColumn findByName(String name);

}
