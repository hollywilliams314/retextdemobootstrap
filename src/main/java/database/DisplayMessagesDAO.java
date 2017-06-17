package database;

import static java.lang.System.out;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import database.DataSource;
import model2.DisplayMessages;

import model2.UserInventory;
import model2.UserInventoryDisplay;

/**
 * A class to dsiplay info from the messages table of the retext db
 * 
 * @author Holly Williams
 *
 */

public class DisplayMessagesDAO {

	DataSource ds;
	
	public DisplayMessagesDAO() {
		this.ds = DataSource.getInstance();
	}

	// looks at my messages and retrieves them
	
	public List<DisplayMessages> listMyMessages()  {
		
		List<DisplayMessages> myMessageList = new ArrayList<DisplayMessages>();

//		System.out.println("in DisplayMessagesdDAO  = " );
		
		String viewed = "";
		String sql = "select u.Id, u.userName, m.id,  m.viewed, m.message " + 
				"from retext.messages m join retext.users u " +
				"where m.senderId = u.Id and m.receiverId = ? ";
		
		int currUserId = 1;  // until sessions is in place
		int senderId = 0;
		int messageId = 0;
	//	System.out.println("sql: " + sql);

		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		Connection myConn = null;
		
		try {
			// 1. Get a connection to the database
				myConn = ds.getConnection();
			// 2. Create a statement object
				myStmt = myConn.prepareStatement(sql);
				myStmt.setInt(1,currUserId);
				myRs = myStmt.executeQuery();

				// 4. Process the result set - put it into the ArrayList
				while (myRs.next()) {	
					if (myRs.getInt("viewed") == 0) viewed = "n";
					else viewed = "y";
					senderId = myRs.getInt("u.id");
					messageId = myRs.getInt("m.id");
		
					myMessageList.add(new DisplayMessages(senderId,
							myRs.getString("userName"), messageId, viewed, 
							myRs.getString("message") ));
				}
				return myMessageList;
	
			} //end try
		catch (Exception exc) {
	//		e.printStackTrace();
			throw new RuntimeException(exc);
		}
		finally {
			DataSource.silentClose(myConn);
			DataSource.silentClose(myStmt);
			DataSource.silentClose(myRs);
		}
	} // end listMyMessages

	
} // end class DisplayMessagesDAO