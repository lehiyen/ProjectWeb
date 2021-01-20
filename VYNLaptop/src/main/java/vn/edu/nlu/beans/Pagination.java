package vn.edu.nlu.beans;

public class Pagination {
    private  int  disPlayProduct ;
    private int pageSize  ;
    private  int totalProdcut ;


    public Pagination( int disPlayProduct , int pageSize  , int totalProdcut){
        this.disPlayProduct = disPlayProduct ;
        this.pageSize = pageSize ;
        this.totalProdcut = totalProdcut ;

    }
    public  int pageStart(String id){

        int start = Integer.parseInt(id) ;
        if(start==1) return start ;
         start = start-1 ;
        return  start;
    }
    public int pageEnd(String id){

       int end = Integer.parseInt(id) ;
       if((end +getPageSize())>totalPage()) return totalPage() ;
       return end + getPageSize() ;

    }
    public int totalPage(){
       int totalPage = getTotalProdcut()/getDisPlayProduct() ;
       if(totalPage*getDisPlayProduct()== getTotalProdcut()) return totalPage ;
       else  return  totalPage +1 ;


    }

    public int getDisPlayProduct() {
        return disPlayProduct;
    }

    public void setDisPlayProduct(int disPlayProduct) {
        this.disPlayProduct = disPlayProduct;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public  int getTotalProdcut(){
        return totalProdcut ;
    }
    public void setTotalProdcut(int totalProdcut){
        this.totalProdcut = totalProdcut ;
    }

}
