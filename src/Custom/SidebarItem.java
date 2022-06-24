/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Custom;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.border.EmptyBorder;

/**
 *
 * @author haidang309
 */
public class SidebarItem extends JLabel {
    public SidebarItem(String text, ImageIcon icon) {
        this.setText(text);
        this.setIcon(icon);
        this.setForeground(new Color(242, 242, 242));
        this.setFont(new Font("Sans Serif", Font.BOLD, 20));
        this.setPreferredSize(new Dimension(200, 56));
        this.setBorder(new EmptyBorder(4,16,4, 16));
    }
}
