/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gov.siput.library.event;

import gov.siput.library.entity.DataBuku;
import gov.siput.library.model.DataBukuModel;



/**
 *
 * @author Administrator
 */
public interface DataBukuListener {
    
    public void onChange(DataBukuModel databuku);
    
    public void OnInsert(DataBuku databuku);
    
    public void onDelete();
    
    public void onUpdate(DataBuku databuku);
    
}
