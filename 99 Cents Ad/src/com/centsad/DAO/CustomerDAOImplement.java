package com.centsad.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.centsad.entity.Customer;
import com.centsad.entity.PaymentInfo;
import com.centsad.entity.Queries;
import com.centsad.entity.Reviews;

@Repository
public class CustomerDAOImplement implements CustomerDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveCustomers(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.save(customer);

	}

	@Override
	public void saveQueries(Queries queries) {
		Session session = sessionFactory.getCurrentSession();
		session.save(queries);
		
	}

	@Override
	public void savePayment(PaymentInfo payment) {
		Session session = sessionFactory.getCurrentSession();
		session.save(payment);
		
	}

	@Override
	public void saveReviews(Reviews review, int id) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class,id);
		customer.add(review);
		session.save(review);
		
	}

	@Override
	public List<Reviews> getReviews() {
		Session session = sessionFactory.getCurrentSession();
		Query<Reviews> query = session.createQuery("from Reviews order by name", Reviews.class);
		 List<Reviews> theReview = new ArrayList<>();
		 theReview=query.getResultList();
		 for(Reviews review: theReview) {
			 System.out.println(review.getName());
		 }
		 return theReview;
	
	}

	@Override
	public int getIdNum(String email) {
		return 1;
		
	}

}
