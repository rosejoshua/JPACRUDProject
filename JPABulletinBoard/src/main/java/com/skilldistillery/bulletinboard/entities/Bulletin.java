package com.skilldistillery.bulletinboard.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Bulletin {
	
	@Id
	private int id;
	
	private String author;
	
	private String post;
	
	@Column(name="date_time")
	private LocalDateTime dateTime;
	
	@Column(name="in_reply_to")
	private Integer inReplyTo;
	
	@Column(name="is_edited")
	private Boolean isEdited;
	
	@Column(name="is_deleted")
	private Boolean isDeleted;
	
	private Integer upvotes;
	
	private Integer downvotes;
	
		//METHODS
	
	public Bulletin() {}
	
	public Bulletin(String author, String post) {
		this.author = author;
		this.post = post;
		dateTime = LocalDateTime.now();
		this.isDeleted = false;
		this.isEdited = false;
	}
	
	public Bulletin(String author, Integer inReplyTo, String post) {
		this.author = author;
		this.inReplyTo = inReplyTo;
		this.post = post;
		dateTime = LocalDateTime.now();
		this.isDeleted = false;
		this.isEdited = false;
		
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

	public LocalDateTime getDateTime() {
		return dateTime;
	}

	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
	}

	public Integer getInReplyTo() {
		return inReplyTo;
	}

	public void setInReplyTo(Integer inReplyTo) {
		this.inReplyTo = inReplyTo;
	}

	public Boolean getIsEdited() {
		return isEdited;
	}

	public void setIsEdited(Boolean isEdited) {
		this.isEdited = isEdited;
	}

	public Boolean getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getUpvotes() {
		return upvotes;
	}

	public void setUpvotes(Integer upvotes) {
		this.upvotes = upvotes;
	}

	public Integer getDownvotes() {
		return downvotes;
	}

	public void setDownvotes(Integer downvotes) {
		this.downvotes = downvotes;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Bulletin [id=").append(id).append(", author=").append(author).append(", post=").append(post)
				.append(", dateTime=").append(dateTime).append(", inReplyTo=").append(inReplyTo).append(", isEdited=")
				.append(isEdited).append(", isDeleted=").append(isDeleted).append(", upvotes=").append(upvotes)
				.append(", downvotes=").append(downvotes).append("]");
		return builder.toString();
	}

	
	
	
	

}
