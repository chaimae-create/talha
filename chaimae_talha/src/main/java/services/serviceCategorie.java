package services;

import java.sql.SQLException;
import java.util.ArrayList;

import dao.Categorie;

public class serviceCategorie {
	public static ArrayList<Categorie> listeCategories() throws ClassNotFoundException, SQLException{
		return Categorie.listeCategories();
	}
}