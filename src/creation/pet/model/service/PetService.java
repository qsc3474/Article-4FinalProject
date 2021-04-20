package creation.pet.model.service;

import creation.pet.model.dao.PetDAO;

public class PetService {
	
	private final PetDAO petDAO;
	
	public PetService() {
		
		petDAO = new PetDAO();
		
	}
	
}
