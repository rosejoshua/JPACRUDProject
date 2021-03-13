package com.skilldistillery.bulletinboard.entities;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Bulletin {
	
	@Id
	private int id;
	
	private String author;
	
	private String post;
	
		//METHODS
	
	public Bulletin() {}
	
	public Bulletin(String author, String post) {
		this.author = author;
		this.post = post;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Bulletin [id=").append(id).append(", author=").append(author).append(", post=").append(post)
				.append("]");
		return builder.toString();
	}
	
	
	

}
