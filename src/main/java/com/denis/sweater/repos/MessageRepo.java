package com.denis.sweater.repos;

import com.denis.sweater.domain.Message;
import org.springframework.data.repository.CrudRepository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

}