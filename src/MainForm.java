import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

public class MainForm
{
    private JPanel rootPanel;

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
    private JButton button1;

    public MainForm()
    {
        btnView.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                DBManager a = new DBManager();
                ArrayList<String> Liste = new ArrayList<String>();
                Liste = a.DBManagerDoStuff();
                for (String str : Liste)
                {
                    OutputBox.append(str);
                }
            }
        });
        button1.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {

            }
        });
    }
}
