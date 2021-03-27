package DataliHouse.Dto;

import java.sql.Date;

public class ProductsDto {
	private int id;
	private String nameString;
	private int price;
	private int quantity;
	private String imgString;
	private Date createdAtDate;
	private Date updatedAtDate;
	private String categorySlug;
	
	public ProductsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCategorySlug() {
		return categorySlug;
	}
	public void setCategorySlug(String categorySlug) {
		this.categorySlug = categorySlug;
	}
	
	public String getNameString() {
		return nameString;
	}
	public void setNameString(String nameString) {
		this.nameString = nameString;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getImgString() {
		return imgString;
	}
	public void setImgString(String imgString) {
		this.imgString = imgString;
	}
	public Date getCreatedAtDate() {
		return createdAtDate;
	}
	public void setCreatedAtDate(Date createdAtDate) {
		this.createdAtDate = createdAtDate;
	}
	public Date getUpdatedAtDate() {
		return updatedAtDate;
	}
	public void setUpdatedAtDate(Date updatedAtDate) {
		this.updatedAtDate = updatedAtDate;
	}
}
