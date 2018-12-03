package com.para.glider3.dao;

import java.util.List;

import com.para.glider3.model.Paraglider;

public interface ParagliderDao {
	public void delete(int paragliderId);

	public Paraglider get(int paragliderId);

	public List<Paraglider> list();

	public void saveOrUpdate(Paraglider paraglider);

}
