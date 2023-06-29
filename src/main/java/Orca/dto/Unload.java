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
public class Unload {
	private String PortName;
	private String LandingDeviceName;
	private long LandingAbility;
	private String TreatmentFreightName;
	private long PortCode;

}
