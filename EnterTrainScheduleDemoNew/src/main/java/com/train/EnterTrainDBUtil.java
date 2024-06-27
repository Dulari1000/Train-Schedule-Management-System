package com.train;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class EnterTrainDBUtil {
	private static Statement stmt = null;

    
    
    
    
    
    
    
    
    
    

   /*public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/oop";
            String user = "root";
            String password = "dulari123";
            connection = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    public static boolean updateTrain1(String tid, String tname, String date, String time, String start, String end, String seats) {
        boolean isSuccess = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = getConnection();
            if (connection != null) {
                String sql = "UPDATE new_table SET tname=?, date=?, time=?, start=?, end=?, seats=? WHERE tid=?";
                preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
                preparedStatement.setString(1, tname);
                preparedStatement.setString(2, date);
                preparedStatement.setString(3, time);
                preparedStatement.setString(4, start);
                preparedStatement.setString(5, end);
                preparedStatement.setString(6, seats);
                preparedStatement.setString(7, tid);

                int rowsAffected = preparedStatement.executeUpdate();
                isSuccess = rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }

    
    public static boolean deleteTrain(String tid) {
        boolean isSuccess = false;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        
        try {
            connection = getConnection();
            if (connection != null) {
                String sql = "DELETE FROM new_table WHERE tid=?";
                preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
                preparedStatement.setString(1, tid);

                int rowsAffected = preparedStatement.executeUpdate();
                isSuccess = rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }

	public static boolean updateTrain(String tid, String tname, String date, String time, String start, String end,
			String seats) {
		// TODO Auto-generated method stub
		return false;
	}
    
    
    
    
    
    
}*/

  
    
    //insert
    public static ArrayList<Train> insertTrain1(String tid, String tname, String date, String time, String start, String end, String seats) {


        // Create connection
        String url = "jdbc:mysql://localhost:3306/oop";
        String user = "root";
        String psw = "dulari123";
        
        ArrayList<Train> tr = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, psw);
            Statement stmt = con.createStatement();
            String sql = "insert into new_table values ('" + tid + "','" + tname + "','" + date + "','" + time + "','" + start + "','" + end + "', '" + seats + "')";
            String sql2 = "select* from new_table where tid = '"+tid+"'";
            
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
            	
            	ResultSet rs2 = stmt.executeQuery(sql2);
				
				if(rs2.next()) {
					String tid1 = rs2.getString(1);
					String tname1 = rs2.getString(2);
					String date1 = rs2.getString(3);
					String time1 = rs2.getString(4);
					String start1= rs2.getString(5);
					String end1 = rs2.getString(6);
					String seats1 = rs2.getString(7);
					
					
					
					Train c = new Train(tid1, tname1, date1, time1, start1, end1,seats1);
					tr.add(c);
				}
            	
            } 
            else {
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return tr;
    }
    
    
    
    
    //update
    public static ArrayList<Train> updateTrain(String tid, String tname, String date, String time, String start, String end, String seats) {


        // Create connection
        String url = "jdbc:mysql://localhost:3306/oop";
        String user = "root";
        String psw = "dulari123";
        
        ArrayList<Train> tr = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, psw);
            Statement stmt = con.createStatement();
            String sql = "update new_table set tid='"+tid+"',tname='"+tname+"',date='"+date+"', time='"+time+"', start ='"+start+"',end='"+end+"',seats='"+seats+"' where tid ='"+tid+"'";           
            String sql2 = "select* from new_table where tid = '"+tid+"'";
            
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
            	
            	ResultSet rs2 = stmt.executeQuery(sql2);
				
				if(rs2.next()) {
					String tid1 = rs2.getString(1);
					String tname1 = rs2.getString(2);
					String date1 = rs2.getString(3);
					String time1 = rs2.getString(4);
					String start1= rs2.getString(5);
					String end1 = rs2.getString(6);
					String seats1 = rs2.getString(7);
					
					
					
					Train c = new Train(tid1, tname1, date1, time1, start1, end1,seats1);
					tr.add(c);
				}
            	
            } 
            else {
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return tr;
    }













//delete

    public static boolean deleteTrain(String tid) {
    	
    	// Create connection
        String url = "jdbc:mysql://localhost:3306/oop";
        String user = "root";
        String psw = "dulari123";
    	
    	boolean isSuccess = false;
    	
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, psw);
            stmt = con.createStatement();
    		String sql = "delete from new_table where tid = '"+tid+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	  
    	return isSuccess;
    }
    
 
    	
		


		




	
}
