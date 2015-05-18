
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


/**
 * 
 * @author w7
 */
public class GetValuesFromDB 
{
    /**
     * 
     * @return
     */
    public static Vector getSeller()
    {
       Vector v=new Vector();
               Connection con= DBinfo.getConn();
               String query="select company from Seller order by company";
               try
               {
                   PreparedStatement ps=con.prepareStatement(query);
                   ResultSet res=ps.executeQuery();
                   while(res.next())
                   {
                       String str=res.getString(1);
                       v.add(str);
                   }
                   con.close();
                   
                   
               }
               catch(Exception e)
               {
                 e.printStackTrace();  
               }
               return v;
    }
    
    /**
     * 
     * @return
     */
    public static Vector  getDealer()
    {
       Vector v=new Vector();
               Connection con=DBinfo.getConn();
               String query="select company from dealer order by company";
               try
               {
                   PreparedStatement ps=con.prepareStatement(query);
                   ResultSet res=ps.executeQuery();
                   while(res.next())
                   {
                       String str=res.getString(1);
                       v.add(str);
                   }
                   con.close();
                   
                   
               }
               catch(Exception e)
               {
                 e.printStackTrace();  
               }
               return v;
    }}
      
 
