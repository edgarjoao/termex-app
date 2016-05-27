package com.termex.db.model;

import java.io.Serializable;

import javax.persistence.*;

import java.util.Date;


/**
 * The persistent class for the contact_us database table.
 *
 */
@Entity
@Table(name="contact_us")
@NamedQuery(name="ContactUs.findAll", query="SELECT c FROM ContactUs c")
public class ContactUs implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_CONT")
	private int idCont;

	@Column(name="CONT_CONTENT")
	private String contContent;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="CONT_CREATED_DATE")
	private Date contCreatedDate;

	@Column(name="CONT_EMAIL")
	private String contEmail;

	@Column(name="CONT_TITLE")
	private String contTitle;
	
	@Column(name="CONT_CLIENT_ID")
	private String clientId;

	public ContactUs() {
	}

	public int getIdCont() {
		return this.idCont;
	}

	public void setIdCont(int idCont) {
		this.idCont = idCont;
	}

	public String getContContent() {
		return this.contContent;
	}

	public void setContContent(String contContent) {
		this.contContent = contContent;
	}

	public Date getContCreatedDate() {
		return this.contCreatedDate;
	}

	public void setContCreatedDate(Date contCreatedDate) {
		this.contCreatedDate = contCreatedDate;
	}

	public String getContEmail() {
		return this.contEmail;
	}

	public void setContEmail(String contEmail) {
		this.contEmail = contEmail;
	}

	public String getContTitle() {
		return this.contTitle;
	}

	public void setContTitle(String contTitle) {
		this.contTitle = contTitle;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

}