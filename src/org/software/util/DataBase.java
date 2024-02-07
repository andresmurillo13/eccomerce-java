package org.software.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBase {

	public Connection getConnection(String profile) {
		Connection connection = null;
		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://localhost:5432/almacen";
		String user = "";
		String password = "";
		if (profile.equals("admin")) {
			user = "almacen_admin";
			password = "12041";
		}
		if (profile.equals("cliente")) {
			user = "almacen_cliente";
			password = "12041";
		}
		if (profile.equals("almacen")) {
			user = "almacen";
			password = "12041";
		}
		
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, password);
			
			System.out.println("conectado");
			
		} catch (Exception e) {
			System.out.println("Error: " + e.toString());
		}
		return connection;
	}

	public void closeObject(Connection connection) {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeObject(PreparedStatement preparedStatement) {
		try {
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeObject(Statement statement) {
		try {
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeObject(ResultSet resultSet) {
		try {
			resultSet.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
