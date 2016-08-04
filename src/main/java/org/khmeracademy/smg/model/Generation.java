package org.khmeracademy.smg.model;

import java.sql.Date;

public class Generation {
	
	private int gen_id;
	private String gen_name;
	private Date gen_start_date;
	private Date gen_end_date;
	private boolean gen_is_finish;
	
	public int getGen_id() {
		return gen_id;
	}
	public void setGen_id(int gen_id) {
		this.gen_id = gen_id;
	}
	public String getGen_name() {
		return gen_name;
	}
	public void setGen_name(String gen_name) {
		this.gen_name = gen_name;
	}
	public boolean isGen_is_finish() {
		return gen_is_finish;
	}
	public void setGen_is_finish(boolean gen_is_finish) {
		this.gen_is_finish = gen_is_finish;
	}
	public Date getGen_start_date() {
		return gen_start_date;
	}
	public void setGen_start_date(Date gen_start_date) {
		this.gen_start_date = gen_start_date;
	}
	public Date getGen_end_date() {
		return gen_end_date;
	}
	public void setGen_end_date(Date gen_end_date) {
		this.gen_end_date = gen_end_date;
	}
}
