package Orca.dto;

import java.util.Date;

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
public class Schedule {
	private String schedule_No;
	private String departurePort;
	private String expectingTime;
	private String arrivalPort;
	private long portCode;
	private Date arrivalDate;
	private Date departureDate;
}
