package services;

import java.sql.SQLException;
import java.util.ArrayList;

import dao.Livre;

public class servicelivre {
	public static ArrayList<Livre> listeLivres() throws SQLException, ClassNotFoundException{
		
	
		return ( ArrayList<Livre>)Livre.listeLivres();
	}
	
	public static boolean AjouterLivre(Livre l) throws ClassNotFoundException, SQLException {
		boolean exist =Livre.LivreExiste(l.getIsbn());
		if(exist) {
			return false;
		}else {
			int res =Livre.AjouterLivre(l);
			return res == 1;
		}
	}
	public static ArrayList<Livre> listeLivres(String nom) throws ClassNotFoundException, SQLException
	{
		return Livre.listeLivres();
	}
}