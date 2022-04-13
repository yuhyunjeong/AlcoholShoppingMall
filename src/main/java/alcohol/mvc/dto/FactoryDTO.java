package alcohol.mvc.dto;

import java.util.List;

public class FactoryDTO {
	private String fName;
	private List<String> fType;
	private String fImage;
	private String fAddr;
		
	public FactoryDTO() {}
	
	public FactoryDTO(String fName, List<String> fType, String fImage, String fAddr) {
		super();
		this.fName = fName;
		this.fType = fType;
		this.fImage = fImage;
		this.fAddr = fAddr;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public List<String> getfType() {
		return fType;
	}

	public void setfType(List<String> fType) {
		this.fType = fType;
	}

	public String getfImage() {
		return fImage;
	}

	public void setfImage(String fImage) {
		this.fImage = fImage;
	}

	public String getfAddr() {
		return fAddr;
	}

	public void setfAddr(String fAddr) {
		this.fAddr = fAddr;
	}
	
	
	
}
