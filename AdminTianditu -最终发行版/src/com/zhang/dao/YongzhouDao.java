package com.zhang.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.zhang.entity.PageBean;
import com.zhang.entity.Tianditu;


//DAO  - SERVICE -ACTION
@Repository
public class YongzhouDao {

	@Resource
	private HibernateTemplate hibernateTemplate;

	@Resource
	private SessionFactory sessionFactory;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean save(Tianditu Yongzhou) {
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(Yongzhou);
		tx.commit();
		session.close();
		return true;
	}

	public boolean update(Tianditu yongzhou) {
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.merge(yongzhou);
		tx.commit();
		session.close();
		return true;
	}

	public boolean delete(int id) {
		Tianditu yongzhou = this.findById(id);
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Transaction tr = session.beginTransaction();
		session.delete(yongzhou);
		tr.commit();
		session.close();
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<Tianditu> find(PageBean pageBean, Tianditu s_Yongzhou) {
		//from +  Entity 实体类名称  limt index,pageSize 起始行，多少条数据
		StringBuffer sb = new StringBuffer("from Tianditu where place='永州市' order by update_time");
		Session session = getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query q = session.createQuery(sb.toString());
		q.setFirstResult(pageBean.getStart());
		q.setMaxResults(pageBean.getPageSize());
		List<Tianditu> yongzhouList = q.list();
		tx.commit();
		session.close();
		return yongzhouList;
	}

	@SuppressWarnings("unchecked")
	public List<Tianditu> findAll() {
		String queryString = "from Tianditu order by update_time";
		return (List<Tianditu>) this.hibernateTemplate.find(queryString);
	}

	public Tianditu findById(int id) {
		return (Tianditu) this.hibernateTemplate.get(Tianditu.class, id);
	}
}
