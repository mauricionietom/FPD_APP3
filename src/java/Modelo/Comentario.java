/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author mnieto
 */
public class Comentario {
    
    private int IdCom;
    private String Descripcion; 
    Usuario userLocal=new Usuario();
    Usuario userExt = new Usuario();

    public int getIdCom() {
        return IdCom;
    }

    public void setIdCom(int IdCom) {
        this.IdCom = IdCom;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public Usuario getUserLocal() {
        return userLocal;
    }

    public void setUserLocal(Usuario userLocal) {
        this.userLocal = userLocal;
    }

    public Usuario getUserExt() {
        return userExt;
    }

    public void setUserExt(Usuario userExt) {
        this.userExt = userExt;
    }

    @Override
    public String toString() {
        return "Comentario{" + "IdCom=" + IdCom + ", Descripcion=" + Descripcion + ", userLocal=" + userLocal + ", userExt=" + userExt + '}';
    }
    
    
    
    
}
