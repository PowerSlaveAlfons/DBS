import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;

public class MainForm
{
    private JPanel rootPanel;
    private boolean calling = false;

    public static void main(String[] args)
    {

        JFrame frame = new JFrame("MainForm");
        frame.setContentPane(new MainForm().rootPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

    private JButton btnView;
    private JTextArea OutputBox;
    private JButton btnShowKDA;
    private JTextField inputBox;
    private JButton btnRankDistri;
    private JButton btnRoleChampions;

    public MainForm()
    {
        DBManager a = new DBManager();
        btnView.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                ArrayList<String> Liste = new ArrayList<String>();
                String number = inputBox.getText();
                Liste = a.DBManagerDoStuff("SELECT f_showMonsterKills_v(" + number + ") from dual");
                for (String str : Liste)
                {
                    OutputBox.append(str);
                }
            }
        });
        btnShowKDA.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                ArrayList<String> Liste = new ArrayList<String>();
                String number = inputBox.getText();
                Liste = a.DBManagerDoStuff("SELECT f_showkdaof_v(" + number + ") from dual");
                for (String str : Liste)
                {
                    OutputBox.append(str);
                }

            }
        });
        btnRankDistri.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                ArrayList<String> Liste = new ArrayList<String>();
                String number = inputBox.getText();
                Liste = a.DBManagerDoStuff("SELECT f_showRankDistribution_v('" + number + "') from dual");
                for (String str : Liste)
                {
                    OutputBox.append(str);
                }

            }

        });
        btnRoleChampions.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                ArrayList<String> Liste = new ArrayList<String>();
                String number = inputBox.getText();
                Liste = a.DBManagerDoStuff("SELECT f_showChampwithRole_v('" + number + "') from dual");
                for (String str : Liste)
                {
                    OutputBox.append(str);
                }

            }
        });
        btnRoleChampions.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                ArrayList<String> Liste = new ArrayList<String>();
                String number = inputBox.getText();
                Liste = a.DBManagerDoStuff("SELECT * FROM(SELECT f_showChampwithRole_v('" + number + "') from dual)");
                for (String str : Liste)
                {
                    OutputBox.append(str);
                }

            }
        });
    }
}
