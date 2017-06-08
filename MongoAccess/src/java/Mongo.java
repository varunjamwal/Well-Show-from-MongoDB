import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.WriteConcern;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.DBCursor;

import com.mongodb.ServerAddress;
import java.util.Arrays;

public class Mongo {

   public static void main( String args[] ) {
	
      try{
		
         // To connect to mongodb server
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
			
         // Now connect to your databases
         DB db = mongoClient.getDB( "MyDB" );
         System.out.println("Connect to database successfully");
         DBCollection coll = db.getCollection("users");
         System.out.println("Collection users selected successfully");
			 DBCursor cursor = coll.find();
          while(cursor.hasNext()) {
        DBObject obj = cursor.next();
        String first = (String)obj.get("firstname");
        String last = (String)obj.get("lastname");
        System.out.println(first);
         }
      }catch(Exception e){
         System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      }
   }
}