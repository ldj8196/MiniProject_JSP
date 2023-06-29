package Orca.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Estimate {
	private String estimateno;
	private String totalfare;
	private long portfacfare;
	private String cargonumber;
	private String schedule_no;
	private String state;

}
