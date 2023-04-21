/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO3;

import Interfaces3.Crud3;
import Modelo3.Persona3;
import config3.Conexion3;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PersonaDAO3 implements Crud3{
    
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Persona3 p=new Persona3();
    Conexion3 cn= new Conexion3();
    
   
    
    @Override
    public List consultar() {
   
        ArrayList<Persona3> list= new ArrayList<>();
        String sql="select * from Edad";
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                Persona3 per= new Persona3();
                per.setEdadI(rs.getDouble("edadI"));
                per.setEdadF(rs.getDouble("edadF"));
                list.add(per);
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        
        return list;
    }

    @Override
    public Persona3 list(int id) {
        
          String sql="select * from Edad where id="+id;
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                p.setEdadI(rs.getDouble("edadI"));
                p.setEdadF(rs.getDouble("edadF"));
            }
                       
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
            
        return p;
    }
    

    @Override
    public boolean registrar(Persona3 per) {
        String sql="insert into Edad(edadI,edadF) values('"+per.getEdadI()+"','"+per.getEdadF()+"')";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        
        ps.executeUpdate();
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;
    
    }


    @Override
    public boolean editar(Persona3 per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
