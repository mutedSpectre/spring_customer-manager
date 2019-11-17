package com.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepository repo;

    public List<Customer> listAll() {
        return (List<Customer>) repo.findAll();
    }
}
