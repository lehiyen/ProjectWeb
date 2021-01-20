package vn.edu.nlu.beans;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import vn.edu.nlu.beans.Product;

public class Cart implements Serializable {
    private Map<String , Product> listCart  = new HashMap<>() ;

    public void addItem(Product p){
        if(listCart.containsKey(p.getId())){
            listCart.get(p.getId()).setSoluong(listCart.get(p.getId()).getSoluong()+1);
        }
        else {
            listCart.put(p.getId() , p ) ;
            p.setSoluong(1);
        }


    }
    public  void removeItem(String id ){
        listCart.remove(id) ;


    }
    public Collection<Product> getListItem(){
        return listCart.values() ;
    }
    public int totalMoneyCart(){
        Collection<Product> listCart = getListItem() ;
        int money = 0 ;
        for(Product product : listCart){
            money += (int) (product.getGiasaugiam()*product.getSoluong());
        }
        return money ;
    }
    public void  UpQuantityProduct(String id) {
        listCart.get(id).setSoluong(listCart.get(id).getSoluong()+1);
    }
    public void downQuantityProduct(String id){
        if(listCart.get(id).getSoluong()<2) return  ;
        else {
            listCart.get(id).setSoluong(listCart.get(id).getSoluong()-1);
        }
    }
    public int getTotalQuantityProduct(){
        int total =  0;
        for(Product p : getListItem()){
            total += p.getSoluong() ;
        }
        return total ;
    }
    public void setTotal(){
        for(Product p : getListItem()) {
            p.setGia() ;
        }
    }
    public void update(int quantity , String id){
        listCart.get(id).setSoluong(listCart.get(id).getSoluong() + quantity);
    }

}
