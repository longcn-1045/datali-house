package DataliHouse.Entity;

public class Categories {
	private int id;
	private String nameString;
	private String slugString;
	private String iconString;

	public Categories() {
		super();
	}

	public String getIconString() {
		return iconString;
	}

	public void setIconString(String iconString) {
		this.iconString = iconString;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameString() {
		return nameString;
	}

	public void setNameString(String nameString) {
		this.nameString = nameString;
	}

	public String getSlugString() {
		return slugString;
	}

	public void setSlugString(String slugString) {
		this.slugString = slugString;
	}
}