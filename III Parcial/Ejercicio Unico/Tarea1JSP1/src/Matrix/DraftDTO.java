package Matrix;

public class DraftDTO {
	
	private String data;
	private int width;
	
	public DraftDTO(String data,int width) {
		super();
		this.data = data;
		this.width = width;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}
}
