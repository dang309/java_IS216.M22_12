/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Report;

import javax.swing.*;
import java.sql.SQLException;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.view.*; 

import DAO.MyConnect;
import java.awt.BorderLayout;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
/**
 *
 * @author haidang309
 */
public class ReportViewer  extends JFrame {
    private JPanel container;
    
    public ReportViewer(String fileName) throws JRException {            
        try {
            container = new JPanel();
            
            container.removeAll();
            container.repaint();
            container.revalidate();
            
            JasperDesign jdesign = JRXmlLoader.load(fileName);
            JasperReport jreport = JasperCompileManager.compileReport(jdesign);
            JasperPrint jprint = JasperFillManager.fillReport(jreport, null, MyConnect.conn);
            
            JRViewer viewer = new JRViewer(jprint);
            
            container.setLayout(new BorderLayout());
            
            container.add(viewer);
            
            this.add(container);
            this.setSize(1400, 900);
            this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                
        } catch (JRException ex) {
            Logger.getLogger(ReportViewer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
