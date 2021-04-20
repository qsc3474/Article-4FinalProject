package creation.pet.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import creation.common.config.ConfigLocation;

public class PetDAO {

	private final Properties prop;
	
	public PetDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "pet/pet-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}
	
	
	
}
