package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Livre {

	public static Livre LivreParId(int id) throws ClassNotFoundException, SQLException {
		Livre l=null;
		Connexion.Connect();
		ResultSet res = Connexion.Select("select * from livre where id="+id);
		if(res.next()) {
			l=new Livre();
		}
		Connexion.Disconnect();
		return l;
	}
	public static ArrayList<Livre> listeLivres() throws SQLException, ClassNotFoundException{
		ArrayList<Livre> livres = new ArrayList<Livre>();
		Connexion.Connect();
		ResultSet res = Connexion.Select("select * from livre");
		while(res.next()) {
			Livre l =new Livre();
			l.setCategorie(Categorie.categorieParId(res.getInt(7)));
			l.setAuteur(daoPersonne.PersonneParId(res.getInt(8)));
			livres.add(l);
		}
		Connexion.Disconnect();
		return livres;
	}
	private void setAuteur(Object personneParId) {
		// TODO Auto-generated method stub
		
	}
	private void setCategorie(Categorie categorieParId) {
		// TODO Auto-generated method stub
		
	}
	
	
	public static boolean LivreExiste(Object isbn) {
		// TODO Auto-generated method stub
		return false;
	}

	public Object getIsbn() {
		// TODO Auto-generated method stub
		return null;
	}
	public static int AjouterLivre(Livre l) {
		// TODO Auto-generated method stub
		return 0;
	}	
}