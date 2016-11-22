package connectdatabase;

import java.util.HashMap;
import java.util.Map;

public class ShowTTCaNhan {
	static Map<String, ThongTinCaNhan> TT = new HashMap<String,ThongTinCaNhan>();
	static 
	{
		TT.put("14110425",
				new ThongTinCaNhan(
						"Nguyễn Quốc Trường",
						"14110425@student.hcmute.edu.vn",
						"Chất Lượng Cao",
						"Công Nghệ Thông Tin",
						"16/01/1996",
						"241625287",
						"14256799",
						"14110425",
						"01672136156",
						"14110CL1",
						"2014-2018",
						"Nam",
						"35/28 Hữu Nghị",
						"Đông Á"));

	}
	public static ThongTinCaNhan getTT (String maso)
	{
		return TT.get(maso);
	}
}
