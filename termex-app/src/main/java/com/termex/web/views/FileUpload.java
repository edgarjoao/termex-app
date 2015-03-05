package com.termex.web.views;

import java.util.Arrays;

public class FileUpload {

	private String name;
	private String contentType;
	private byte[] image;
	private int length;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	@Override
	public String toString() {
		return "FileUpload [name=" + name + ", contentType=" + contentType
				+ ", image=" + Arrays.toString(image) + ", length=" + length
				+ "]";
	}

}
