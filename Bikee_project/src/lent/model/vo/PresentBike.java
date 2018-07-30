package lent.model.vo;

public class PresentBike {

	private String present_uid;
	private int method_num;
	private String sendmem_id;

public PresentBike() {}

public PresentBike(String present_uid, int method_num, String sendmem_id) {
	super();
	this.present_uid = present_uid;
	this.method_num = method_num;
	this.sendmem_id = sendmem_id;
}

@Override
public String toString() {
	return "PresentBike [present_uid=" + present_uid + ", method_num=" + method_num + ", sendmem_id=" + sendmem_id
			+ "]";
}


}
