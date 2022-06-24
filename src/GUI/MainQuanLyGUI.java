package GUI;

import Custom.SidebarItem;
import BUS.PhanQuyenBUS;
import DTO.PhanQuyen;


import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import javax.swing.*;

public class MainQuanLyGUI extends JFrame {

    public MainQuanLyGUI() {
        this.setTitle("Phần mềm quản lý cửa hàng đồ ăn nhanh");
        this.setSize(1400, 900);
        Image icon = Toolkit.getDefaultToolkit().getImage("image/ManagerUI/icon-app.png");
        this.setIconImage(icon);
        addControls();
        addEvents();
    }

    public void showWindow() {
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
//        this.setUndecorated(true);
//        this.setLocationRelativeTo(null);
        this.setVisible(true);
    }

    JLabel btnDoiMatKhau;
    JPanel pnTitle, pnMenuLeft, pnCard, pnBanHang, pnKhuyenMai, pnNhapHang, pnSanPham, pnNhanVien, pnKhachHang, pnThongKe;
    PnQuanLyBanHangGUI banHangPanel;
    PnQuanLyKhuyenMaiGUI khuyenMaiPanel;
    PnQuanLyNhapHangGUI nhapHangPanel;
    PnQuanLySanPhamGUI sanPhamPanel;
    PnQuanLyNhanVienGUI nhanVienPanel;
    PnQuanLyKhachHangGUI khachHangPanel;
    PnQuanLyThongKeGUI thongKePanel;

    JLabel btnClose, btnMinimize, lblBanHang, lblKhuyenMai, lblNhapHang, lblSanPham, lblNhanVien, lblKhachHang, 
            lblThongKe, lblDoiMatKhau, lblLogOut;
    final Color clLeftItem = new Color(54, 48, 98);
    final Color clLeftItemHover = new Color(72, 88, 107);
    final Color clLeftItemSelected = Color.decode("#6200ee");
    ArrayList<JLabel> listMenuLeft;
    CardLayout cardMenuLeftGroup = new CardLayout();

    private void addControls() {
        int width = this.getWidth();
        int height = this.getHeight();

        Container con = getContentPane();

        JPanel pnMain = new JPanel();
        pnMain.setLayout(new BorderLayout());

        /*
        ============================================================
                                TITLE BAR
        ============================================================
         */
//        pnTitle = new JPanel(null);
//        pnTitle.setPreferredSize(new Dimension(width, 46));
//        pnTitle.setBackground(Color.decode("#06283D"));
//
//        btnDoiMatKhau = new JLabel(new ImageIcon("image/ManagerUI/gear.png"));
//        btnDoiMatKhau.setToolTipText("Đổi mật khẩu");
//        btnDoiMatKhau.setBounds(0, 0, 46, 46);
//        btnDoiMatKhau.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
//        pnTitle.add(btnDoiMatKhau);
//
//        JLabel lblTitleText = new JLabel(new ImageIcon("image/ManagerUI/title-text.png"));
//        lblTitleText.setBounds(width / 2 - 428 / 2, 3, 428, 38);
//        pnTitle.add(lblTitleText);

//        btnMinimize = new JLabel(new ImageIcon("image/ManagerUI/btn-minimize.png"));
//        btnMinimize.setBounds(width - 85, 5, 38, 35);
//        btnMinimize.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
//        pnTitle.add(btnMinimize);

//        btnClose = new JLabel(new ImageIcon("image/ManagerUI/btn-close.png"));
//        btnClose.setBounds(width - 40, 5, 35, 35);
//        btnClose.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
//        pnTitle.add(btnClose);
//
//        pnMain.add(pnTitle, BorderLayout.NORTH);
        /*
        ============================================================
                                SIDE BAR MENU
        ============================================================
         */
        pnMenuLeft = new JPanel();
//        pnMenuLeft.setPreferredSize(new Dimension(250, height - pnTitle.getHeight()));
        pnMenuLeft.setBackground(Color.decode("#121212"));
        pnMenuLeft.setLayout(new BoxLayout(pnMenuLeft, BoxLayout.Y_AXIS));

        lblBanHang = new SidebarItem("Bán hàng", new ImageIcon("image/ManagerUI/cart.png"));
//        lblBanHang.setIcon(new ImageIcon("image/ManagerUI/cart.png"));
//        lblBanHang.setText("Ban Hang");
//        lblBanHang.setForeground(new Color(255,255,255));
//        lblBanHang.setPreferredSize(new Dimension(250, height - pnTitle.getHeight()));
        
        
        lblKhuyenMai = new SidebarItem("Khuyến mãi", new ImageIcon("image/ManagerUI/discount.png"));
        lblNhapHang = new SidebarItem("Nhập hàng", new ImageIcon("image/ManagerUI/truck.png"));
        lblSanPham = new SidebarItem("Sản phẩm", new ImageIcon("image/ManagerUI/food.png"));
        lblNhanVien = new SidebarItem("Nhân viên", new ImageIcon("image/ManagerUI/emp.png"));
        lblKhachHang = new SidebarItem("Khách hàng", new ImageIcon("image/ManagerUI/customer.png"));
        lblThongKe = new SidebarItem("Thống kê", new ImageIcon("image/ManagerUI/chart.png"));
        lblDoiMatKhau = new SidebarItem("Đổi mật khẩu", new ImageIcon("image/ManagerUI/gear.png"));
        lblLogOut = new SidebarItem("Đăng xuất", new ImageIcon("image/ManagerUI/exit.png"));


        listMenuLeft = new ArrayList<>();
        listMenuLeft.add(lblBanHang);
        listMenuLeft.add(lblKhuyenMai);
        listMenuLeft.add(lblSanPham);
        listMenuLeft.add(lblNhanVien);
        listMenuLeft.add(lblKhachHang);
        listMenuLeft.add(lblNhapHang);
        listMenuLeft.add(lblThongKe);


        for (JLabel lbl : listMenuLeft) {
            lbl.setVisible(false);
            lbl.setPreferredSize(new Dimension(250, 65));
            lbl.setOpaque(true);
            lbl.setBackground(Color.decode("#121212"));
            lbl.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
            pnMenuLeft.add(lbl);
        }
        
        pnMenuLeft.add(lblDoiMatKhau);
        lblDoiMatKhau.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        pnMenuLeft.add(lblLogOut);
        lblLogOut.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));


        lblBanHang.setBackground(clLeftItemSelected);
        lblBanHang.setVisible(true);
        lblKhuyenMai.setVisible(true);

        pnMain.add(pnMenuLeft, BorderLayout.WEST);

        /*
        ============================================================
                                CARD PANEL           
        ============================================================
         */
        pnCard = new JPanel(cardMenuLeftGroup);
        pnCard.setBackground(Color.WHITE);

        pnBanHang = new JPanel();
        pnKhuyenMai = new JPanel();
        pnNhapHang = new JPanel();
        pnSanPham = new JPanel();
        pnNhanVien = new JPanel();
        pnKhachHang = new JPanel();
        pnThongKe = new JPanel();

        pnCard.add(pnBanHang, "1");
        pnCard.add(pnKhuyenMai, "2");
        pnCard.add(pnNhapHang, "3");
        pnCard.add(pnSanPham, "4");
        pnCard.add(pnNhanVien, "5");
        pnCard.add(pnKhachHang, "6");
        pnCard.add(pnThongKe, "7");

        //==========ADD PANEL BÁN HÀNG + KHUYẾN MÃI (Ko phân quyền)==========
       banHangPanel = new PnQuanLyBanHangGUI();
        pnBanHang.setLayout(new BorderLayout());
      pnBanHang.add(banHangPanel, BorderLayout.CENTER);

       khuyenMaiPanel = new PnQuanLyKhuyenMaiGUI();
       pnKhuyenMai.setLayout(new BorderLayout());
        pnKhuyenMai.add(khuyenMaiPanel, BorderLayout.CENTER);

        //======XỬ LÝ PHÂN QUYỀN=======
        PhanQuyen quyen = PhanQuyenBUS.quyenTK;
        
        System.out.println(quyen);

        if (quyen.getNhapHang() == 1) {
            nhapHangPanel = new PnQuanLyNhapHangGUI();
            pnNhapHang.setLayout(new BorderLayout());
            pnNhapHang.add(nhapHangPanel, BorderLayout.CENTER);
            lblNhapHang.setVisible(true);
        }

        if (quyen.getQlSanPham() == 1) {
            sanPhamPanel = new PnQuanLySanPhamGUI();
            pnSanPham.setLayout(new BorderLayout());
            pnSanPham.add(sanPhamPanel, BorderLayout.CENTER);
            lblSanPham.setVisible(true);
        }

        if (quyen.getQlNhanVien() == 1) {
            nhanVienPanel = new PnQuanLyNhanVienGUI();
            pnNhanVien.setLayout(new BorderLayout());
            pnNhanVien.add(nhanVienPanel, BorderLayout.CENTER);
            lblNhanVien.setVisible(true);
        }

        if (quyen.getQlKhachHang() == 1) {
            khachHangPanel = new PnQuanLyKhachHangGUI();
            pnKhachHang.setLayout(new BorderLayout());
            pnKhachHang.add(khachHangPanel, BorderLayout.CENTER);
            lblKhachHang.setVisible(true);
        }

        if (quyen.getThongKe() == 1) {
            thongKePanel = new PnQuanLyThongKeGUI();
            pnThongKe.setLayout(new BorderLayout());
            pnThongKe.add(thongKePanel, BorderLayout.CENTER);
            lblThongKe.setVisible(true);
        }
        pnMain.add(pnCard);
        /*
        ============================================================
                                CARD PANEL           
        ============================================================
         */
        con.add(pnMain);
    }

    int xMouse, yMouse;

    private void addEvents() {
        this.addMouseMotionListener(new MouseMotionListener() {
            @Override
            public void mouseDragged(MouseEvent e) {
                moverFrame(e.getXOnScreen(), e.getYOnScreen());
            }

            @Override
            public void mouseMoved(MouseEvent e) {
                xMouse = e.getX();
                yMouse = e.getY();
            }
        });

        lblDoiMatKhau.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                new DlgDoiMatKhau().setVisible(true);
            }

            @Override
            public void mousePressed(MouseEvent e) {
            }

            @Override
            public void mouseReleased(MouseEvent e) {
            }

            @Override
            public void mouseEntered(MouseEvent e) {
//                lblDoiMatKhau.setOpaque(true);
//                lblDoiMatKhau.setBackground(clLeftItemHover);
            }

            @Override
            public void mouseExited(MouseEvent e) {
//                lblDoiMatKhau.setOpaque(false);
//                lblDoiMatKhau.setBackground(new Color(0, 0, 0, 0));
            }
        });
        
        lblLogOut.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                xuLyDangXuat();
            }

            @Override
            public void mousePressed(MouseEvent e) {
            }

            @Override
            public void mouseReleased(MouseEvent e) {
            }

            @Override
            public void mouseEntered(MouseEvent e) {
//                lblDoiMatKhau.setOpaque(true);
//                lblDoiMatKhau.setBackground(clLeftItemHover);
            }

            @Override
            public void mouseExited(MouseEvent e) {
//                lblDoiMatKhau.setOpaque(false);
//                lblDoiMatKhau.setBackground(new Color(0, 0, 0, 0));
            }
        });

//        btnMinimize.addMouseListener(new MouseListener() {
//            @Override
//            public void mouseClicked(MouseEvent e) {
//                thuNhoFrame();
//            }
//
//            @Override
//            public void mousePressed(MouseEvent e) {
//            }
//
//            @Override
//            public void mouseReleased(MouseEvent e) {
//            }
//
//            @Override
//            public void mouseEntered(MouseEvent e) {
//                btnMinimize.setIcon(new ImageIcon("image/ManagerUI/btn-minimize--hover.png"));
//            }
//
//            @Override
//            public void mouseExited(MouseEvent e) {
//                btnMinimize.setIcon(new ImageIcon("image/ManagerUI/btn-minimize.png"));
//            }
//        });

//        btnClose.addMouseListener(new MouseListener() {
//            @Override
//            public void mouseClicked(MouseEvent e) {
//                thoatChuongTrinh();
//            }
//
//            @Override
//            public void mousePressed(MouseEvent e) {
//            }
//
//            @Override
//            public void mouseReleased(MouseEvent e) {
//            }
//
//            @Override
//            public void mouseEntered(MouseEvent e) {
//                btnClose.setIcon(new ImageIcon("image/ManagerUI/btn-close--hover.png"));
//            }
//
//            @Override
//            public void mouseExited(MouseEvent e) {
//                btnClose.setIcon(new ImageIcon("image/ManagerUI/btn-close.png"));
//            }
//        });

        for (JLabel lbl : listMenuLeft) {
            lbl.addMouseListener(new MouseListener() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    for (JLabel lblDisable : listMenuLeft) {
                        lblDisable.setBackground(Color.decode("#121212"));
                    }
                    lbl.setBackground(clLeftItemSelected);

                    // Xử lý lật trang theo menu
                    String cardName = "";
                    if (lbl == lblBanHang) {
                        cardName = "1";
                    } else if (lbl == lblKhuyenMai) {
                        cardName = "2";
                    } else if (lbl == lblNhapHang) {
                        cardName = "3";
                    } else if (lbl == lblSanPham) {
                        cardName = "4";
                    } else if (lbl == lblNhanVien) {
                        cardName = "5";
                    } else if (lbl == lblKhachHang) {
                        cardName = "6";
                    } else {
                        cardName = "7";
                    }
                    cardMenuLeftGroup.show(pnCard, cardName);
                }

                @Override
                public void mousePressed(MouseEvent e) {
                }

                @Override
                public void mouseReleased(MouseEvent e) {
                }

                @Override
                public void mouseEntered(MouseEvent e) {
                    if (lbl.getBackground().equals(clLeftItem)) {
                        lbl.setBackground(clLeftItemHover);
                    }
                }

                @Override
                public void mouseExited(MouseEvent e) {
                    if (lbl.getBackground().equals(clLeftItemHover)) {
                        lbl.setBackground(clLeftItem);
                    }
                }
            });
        }

    }
    
    private void xuLyDangXuat() {
        this.dispose();
        DangNhapGUI login = new DangNhapGUI();
         login.showWindow();
    }

    private void moverFrame(int x, int y) {
        this.setLocation(x - xMouse, y - yMouse);
    }

    private void thuNhoFrame() {
        this.setState(Frame.ICONIFIED);
    }

    private void thoatChuongTrinh() {
        banHangPanel.xuLyThoat();
        Main.Main.changLNF("Nimbus");
        System.exit(0);
    }

}