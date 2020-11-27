package com.centsad.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.centsad.DAO.CustomerDAO;
import com.centsad.entity.Customer;
import com.centsad.entity.PaymentInfo;
import com.centsad.entity.Queries;
import com.centsad.entity.Reviews;

@Service
public class CustomerServiceImplement implements CustomerService {
	
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public void saveCustomers(Customer customer) {
		customerDAO.saveCustomers(customer);

	}

	@Override
	@Transactional
	public void saveQueries(Queries queries) {
		customerDAO.saveQueries(queries);
		
	}

	@Override
	@Transactional
	public void savePayment(PaymentInfo payment) {
		customerDAO.savePayment(payment);
		
	}

	@Override
	@Transactional
	public void saveReviews(Reviews review, int id) {
		customerDAO.saveReviews(review, id);
		
	}

	@Override
	@Transactional
	public List<Reviews> getReviews() {
		return customerDAO.getReviews();
		
	}

	@Override
	@Transactional
	public int getIdNum(String email) {
		return customerDAO.getIdNum(email);
		
	}
	
	
	
	

}
