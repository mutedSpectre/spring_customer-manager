package com.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepository repo;

    public List<Customer> listAll() {
        return (List<Customer>) repo.findAll();
    }

    public void save (Customer customer) {
        repo.save(customer);
    }

    public Customer get(long id) {
        Optional<Customer> result = repo.findById(id);
        return result.get();
    }
}
