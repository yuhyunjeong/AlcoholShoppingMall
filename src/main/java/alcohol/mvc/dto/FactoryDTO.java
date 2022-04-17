package alcohol.mvc.dto;

import java.util.List;

public class FactoryDTO {
	private String fName;
	private String fType;
	private String fAddr;
		
	public FactoryDTO() {}

	public FactoryDTO(String fName, String fType, String fAddr) {
		super();
		this.fName = fName;
		this.fType = fType;
		this.fAddr = fAddr;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getfType() {
		return fType;
	}

	public void setfType(String fType) {
		this.fType = fType;
	}

	public String getfAddr() {
		return fAddr;
	}

	public void setfAddr(String fAddr) {
		this.fAddr = fAddr;
	}
	
}
