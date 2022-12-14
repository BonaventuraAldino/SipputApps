/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.siput.library.model;

import gov.siput.library.entity.DataBuku;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Administrator
 */
public class TableDataBukuModel extends AbstractTableModel{
    
    private List<DataBuku> list = new ArrayList<DataBuku>();

    public void setList(List<DataBuku> list) {
        this.list = list;
    }

    @Override
    public int getRowCount() {
        return list.size();
    }

    @Override
    public int getColumnCount() {
        return 7;
    }
    
        public boolean add(DataBuku e) {
        try{
            return list.add(e);
        }finally{
            fireTableRowsInserted(getRowCount()-1, getRowCount()-1);
    }
  }

    public DataBuku get(int index) {
        return list.get(index);
    }

    public DataBuku set(int index, DataBuku element) {
        try{
            return list.set(index, element); 
        }finally{
            fireTableRowsUpdated(index, index);        
        }      
    }

    public DataBuku remove(int index) {
        try{
            return list.remove(index);
        }finally{
            fireTableRowsDeleted(index, index);    
        }   
    }

    
    @Override
    public String getColumnName(int column) {
        switch(column){
            case 0 :
                return "ID";
            case 1 :
                return "KODEBUKU";
            case 2 :
                return "JUDULBUKU";
            case 3 :
                return "PENGARANG";
            case 4 :
                return "TAHUNTERBIT"; 
            case 5 :
                return "JUMLAHBUKU";
            case 6 :
                return "PENERBIT";
            default :
                return null;
        }
    }
    
    
    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        switch(columnIndex){
            case 0 : 
                return list.get(rowIndex).getId();
            case 1 : 
                return list.get(rowIndex).getKodebuku();
            case 2 : 
                return list.get(rowIndex).getJudulbuku();
            case 3 : 
                return list.get(rowIndex).getPengarang();
            case 4 : 
                return list.get(rowIndex).getTahunterbit();
            case 5 :
                return list.get(rowIndex).getJumlahbuku();
            case 6 :
                return list.get(rowIndex).getPenerbit();
            default:
                return null;
        }
    }
    
}
