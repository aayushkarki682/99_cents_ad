package com.centsad.services;

import java.util.List;

import com.centsad.entity.Customer;
import com.centsad.entity.PaymentInfo;
import com.centsad.entity.Queries;
import com.centsad.entity.Reviews;

public interface CustomerService {
	public void saveCustomers(Customer customer);
	public void saveQueries(Queries queries);
	public void savePayment(PaymentInfo payment);
	public void saveReviews(Reviews review, int id);
	public List<Reviews> getReviews();
	public int getIdNum(String email);
}
