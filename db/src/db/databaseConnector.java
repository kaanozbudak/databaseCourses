package db;
import java.sql.*;

public class databaseConnector 
{
    private static Connection connection;
    private static Statement statement;
    private static ResultSet resultSet;
	
    public static void startConnection()
	{    
	    String javaDriver = "com.mysql.cj.jdbc.Driver";
	    String jdbcURLRemoteHost = "jdbc:mysql://localhost:3306/courses";
	    String root = "root";
	    String myPassword="rosekaan1";
	    ResultSet rs;
	    try
	    {
	        Class.forName(javaDriver);
	
	        connection = DriverManager.getConnection(jdbcURLRemoteHost,root,myPassword);
	    }
	    catch( Exception e )
	    {
	        System.out.println("error1: "+e.getLocalizedMessage());
	    }
	}
	public static void dataInsert()
	{
		try
        {
           startConnection();
           String name = "pervaneh";
           String sqlStatement = String.format("insert into kaanTable values(%d,'%s')",45,name);
           statement = connection.createStatement();
           statement.executeUpdate(sqlStatement);
           
           // if you want to give somethimng you have to give executeUpdate()
           // if you want to take something from database you have to give executeQuery()
        }
        catch (SQLException e) 
        {
           System.out.println("error5: "+e.getLocalizedMessage()); 
        }
	}
	public static void main(String args[])
	{
		dataInsert();
	}
		
}
