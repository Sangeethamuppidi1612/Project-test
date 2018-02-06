package com.example.demo;

import javax.persistence.*;
import javax.persistence.Id;

@Entity
@Table(name="test_details")
public class Test {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	private String title;
	
	private String director;

	public Test(){}
	
	public Test(String title, String director) {
		super();
		this.title = title;
		this.director = director;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}
	
	
	
}
