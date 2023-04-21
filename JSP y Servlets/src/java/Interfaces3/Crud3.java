/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Interfaces3;
import Modelo3.Persona3;
import java.util.List;

public interface Crud3 {
   public List consultar();
   public Persona3 list(int id);
   public boolean registrar(Persona3 per);
   public boolean editar(Persona3 per);
   public boolean eliminar(int id);
   
}
