/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package semkapds;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jožko
 */
public class Service {

    public static Connection conn = null;

    /**
     * Napojenie na databázu
     *
     * @throws Exception
     */
    public static void connect() {

        try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            String dbURL = "jdbc:oracle:thin:@localhost:1521/XE";
            String username = "josif";
            String password = "1234567";
            conn = DriverManager.getConnection(dbURL, username, password);
            //conn = DriverManager.getConnection("jdbc:oracle:thin:localhost/aquapark", "root", "");
            if (conn != null) {
                System.out.println("Connected");
            }
        } catch (SQLException ex) {
            System.out.println("Databaza pripojenie");
        }
    }

    public static Connection getDB() {
        if (conn == null) {

            connect();
        }
        return conn;

    }

    public List<String[]> test() {

        List<String[]> test = new ArrayList<String[]>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "SELECT * FROM osoba";
            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[3];
                o[0] = resultSet.getString("os_cislo");
                o[1] = resultSet.getString("meno");
                o[2] = resultSet.getString("priezvisko");

                test.add(o);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public List<String[]> vypisPrac(String stupen, String program, String semester, String rok) {

        List<String[]> test = new ArrayList<String[]>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "select pr.id as cp, pr.nazov as naz,os.os_cislo as cislo, os.MENO as meno, os.PRIEZVISKO as priez, pr.OS_VEDUCI as veduci, pr.OS_OPONENT as oponent, pr.OS_TUTOR as tutor  from praca pr\n"
                    + "join student st on(st.OS_CISLO = pr.OS_STUDENT)\n"
                    + "join osoba os on (pr.os_student = os.OS_CISLO )\n"
                    + "where pr.semester = '" + semester + "'\n"
                    + "and st.ROCNIK = case " + stupen + " when 1 then 3 when 2 then 5 end \n"
                    + "and pr.ROK = '" + rok + "'\n"
                    + "and st.ST_ODBOR = " + program;

            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[8];
                o[0] = resultSet.getString("cp");
                o[1] = resultSet.getString("naz");
                o[2] = resultSet.getString("cislo");
                o[3] = resultSet.getString("meno");
                o[4] = resultSet.getString("priez");
                o[5] = resultSet.getString("veduci");
                o[6] = resultSet.getString("oponent");
                o[7] = resultSet.getString("tutor");

                test.add(o);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public List<ComboItem> getOdbors() {

        List<ComboItem> test = new ArrayList<ComboItem>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "SELECT distinct(sp.ST_ODBOR) as odbor, sp.popis_odboru as popis FROM st_program sp order by sp.ST_ODBOR";
            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[3];
                ComboItem ci = new ComboItem(resultSet.getString("popis"), resultSet.getString("odbor"));

                test.add(ci);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public List<String[]> getPriradenia(String kolo, String rok, String semester) {

        List<String[]> test = new ArrayList<String[]>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "select os.meno as meno, os.priezvisko as priez,to_char(zs.CAS_ZACATIA, 'DD.MM.YYYY') as datum, to_char(zs.CAS_ZACATIA, 'HH24:MI:SS')  as zaciatok, to_char( zs.CAS_KONCA , 'HH24:MI:SS')as koniec, km.ID_KOMISIE as komisia, km.MIESTNOST as miestnost from OSOBA os\n"
                    + "join ZAP_STUDENTI zs on (zs.OS_CISLO = os.OS_CISLO)\n"
                    + "join komisie km on (km.id_komisie = zs.ID_KOMISIE)\n"
                    + "where zs.KOLO = " + kolo + " and zs.ROK = '" + rok + "' and zs.Semester = '" + semester + "'";

            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[7];
                o[0] = resultSet.getString("meno");
                o[1] = resultSet.getString("priez");
                o[2] = resultSet.getString("datum");
                o[3] = resultSet.getString("zaciatok");
                o[4] = resultSet.getString("koniec");
                o[5] = resultSet.getString("komisia");
                o[6] = resultSet.getString("miestnost");

                test.add(o);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public List<String[]> getNepriradeny(String rok, String semester) {

        List<String[]> test = new ArrayList<String[]>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "select distinct(pr.id),os.MENO as meno, os.PRIEZVISKO as priez from praca pr\n"
                    + "join ucitelia uc on(uc.OS_CISLO = pr.OS_OPONENT or uc.OS_CISLO = pr.OS_VEDUCI)\n"
                    + "join STUDENT st on (pr.OS_STUDENT = st.OS_CISLO)\n"
                    + "join KOMISIE km on (uc.ID_KOMISIE = km.ID_KOMISIE)\n"
                    + "join TERMINY tm on (tm.ID_TERMIN = km.ID_TERMIN)\n"
                    + "join OSOBA os on (os.OS_CISLO = pr.OS_STUDENT)\n"
                    + "where pr.ROK = '" + rok + "' and pr.SEMESTER = '" + semester + "'\n"
                    + "and TO_CHAR(tm.DATUM, 'YYYY') = '" + rok + "'\n"
                    + "and uc.ID_FUN = 3 and st.ST_ODBOR = km.ST_ODBOR \n"
                    + "and st.ST_ZAMERANIE = km.ST_ZAMERANIE";

            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[2];
                o[0] = resultSet.getString("meno");
                o[1] = resultSet.getString("priez");

                test.add(o);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public List<String[]> getUciteliaKedyKde(String rok, String semester) {

        List<String[]> test = new ArrayList<String[]>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "select op.MENO as meno, op.PRIEZVISKO as priez, km.NAZOV as komisia, km.MIESTNOST as miestnost,\n"
                    + "to_char(zs.CAS_ZACATIA, 'DD.MM.YYYY') as datum, to_char(zs.CAS_ZACATIA, 'HH24:MI:SS') as zaciatok, \n"
                    + "to_char( zs.CAS_KONCA , 'HH24:MI:SS')as koniec, (s.MENO || ' ' || s.PRIEZVISKO) as student,\n"
                    + "pr.NAZOV as nazov, (case when op.os_cislo = pr.os_oponent then 'oponent' else 'veduci' end)as rola from zap_studenti zs\n"
                    + "join praca pr on (pr.OS_STUDENT = zs.OS_CISLO)\n"
                    + "join osoba s on (s.OS_CISLO = zs.OS_CISLO)\n"
                    + "join KOMISIE km on(km.ID_KOMISIE = zs.ID_KOMISIE)\n"
                    + "join osoba op on (op.OS_CISLO = pr.OS_OPONENT or op.OS_CISLO = pr.OS_VEDUCI)\n"
                    + "where pr.ROK = zs.rok and zs.rok = '" + rok + "' \n"
                    + "and pr.SEMESTER = zs.SEMESTER and zs.SEMESTER = '" + semester + "'\n"
                    + "order by op.PRIEZVISKO, op.meno";

            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[10];
                o[0] = resultSet.getString("meno");
                o[1] = resultSet.getString("priez");
                o[2] = resultSet.getString("komisia");
                o[3] = resultSet.getString("miestnost");
                o[4] = resultSet.getString("datum");
                o[5] = resultSet.getString("zaciatok");
                o[6] = resultSet.getString("koniec");
                o[7] = resultSet.getString("student");
                o[8] = resultSet.getString("nazov");
                o[9] = resultSet.getString("rola");

                test.add(o);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public void generujNaStatnice() {

        Thread thread = new Thread() {
            public void run() {
                CallableStatement cstmt = null;
                try {
                    cstmt = conn.prepareCall("{ call RUNGENERATE () }");
                    cstmt.execute();
                } catch (SQLException ex) {
                    Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        };
        thread.start();

    }

    public List<ComboItem> getZameranie(String odbor) {

        List<ComboItem> test = new ArrayList<ComboItem>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "SELECT sp.ST_ZAMERANIE as zameranie, sp.POPIS_ZAMERANIA as popis from st_program sp\n"
                    + "where sp.ST_ODBOR = " + odbor;
            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[2];
                String popis = resultSet.getString("popis") == null ? "Bez zamerania" : resultSet.getString("popis");
                ComboItem ci = new ComboItem(popis, resultSet.getString("zameranie"));

                test.add(ci);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public String getStatistic(String statistic, int stupen, int program, int zameranie, String rok) {

        final CountDownLatch latch = new CountDownLatch(1);
        final String[] result = new String[1];
        Thread thread = new Thread() {
            public void run() {
                CallableStatement cstmt = null;
                try {

                    switch (statistic) {

                        case "1":
                            cstmt = conn.prepareCall("{ call GETSTATISTIC1 (?, ?, ?, ?, ?) }");
                            break;
                        case "2":
                            cstmt = conn.prepareCall("{ call GETSTATISTIC2 (?, ?, ?, ?, ?) }");
                            break;
                        case "3":
                            cstmt = conn.prepareCall("{ call GETSTATISTIC3 (?, ?, ?, ?, ?) }");
                            break;
                    }
                    cstmt.setInt(1, stupen);
                    cstmt.setInt(2, program);
                    cstmt.setInt(3, zameranie);
                    cstmt.setString(4, rok);
                    cstmt.registerOutParameter(5, oracle.jdbc.OracleTypes.CLOB);
                    cstmt.execute();
                    result[0] = cstmt.getString(5);
                    latch.countDown();
                } catch (SQLException ex) {
                    Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
                }

            }

        };
        thread.start();
        try {
            latch.await();
        } catch (InterruptedException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result[0];

    }

    public List<ComboItem> getKomisie(String rok, String semester) {

        List<ComboItem> test = new ArrayList<ComboItem>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "select km.NAZOV as nazov, km.ID_KOMISIE as id from komisie km\n"
                    + "join TERMINY tm on (km.ID_TERMIN = tm.ID_TERMIN)\n"
                    + "where to_char(tm.DATUM, 'YYYY') = '" + rok + "'\n"
                    + "and to_char(tm.datum, 'MM') >= case '" + semester + "' When 'L' then '01' else '06' end \n"
                    + "and to_char(tm.datum, 'MM') <= case '" + semester + "' When 'L' then '06' else '12' end";
            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {

                ComboItem ci = new ComboItem(resultSet.getString("nazov"), resultSet.getString("id"));

                test.add(ci);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public List<String[]> getZapStudent(String komisia) {

        List<String[]> test = new ArrayList<String[]>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "select os.os_cislo as cislo, os.MENO as meno, os.PRIEZVISKO as priez, to_char(zs.CAS_ZACATIA, 'DD.MM.YYYY') as datum, to_char(zs.CAS_ZACATIA, 'HH24:MI:SS') as zaciatok, to_char( zs.CAS_KONCA , 'HH24:MI:SS')as koniec,\n"
                    + "zs.ZNAMKA from ZAP_STUDENTI zs\n"
                    + "join osoba os on (zs.OS_CISLO = os.OS_CISLO)\n"
                    + "where zs.ID_KOMISIE = " + komisia;

            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[7];
                o[0] = resultSet.getString("cislo");
                o[1] = resultSet.getString("meno");
                o[2] = resultSet.getString("priez");
                o[3] = resultSet.getString("datum");
                o[4] = resultSet.getString("zaciatok");
                o[5] = resultSet.getString("koniec");
                o[6] = resultSet.getString("znamka");

                test.add(o);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public void OdstranZapStud(int student, int komisia) {

        Thread thread = new Thread() {
            public void run() {
                CallableStatement cstmt = null;
                try {
                    cstmt = conn.prepareCall("{ call VYRADSTUDENTA (?, ?) }");

                    cstmt.setInt(1, student);
                    cstmt.setInt(2, komisia);
                    cstmt.execute();
                } catch (SQLException ex) {
                    Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        };
        thread.start();

    }

    public void DoplnZapStud(int student, int komisia) {

        Thread thread = new Thread() {
            public void run() {
                CallableStatement cstmt = null;
                try {
                    cstmt = conn.prepareCall("{ call DOPLNSTUDENTA (?, ?) }");

                    cstmt.setInt(1, student);
                    cstmt.setInt(2, komisia);
                    cstmt.execute();
                } catch (SQLException ex) {
                    Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        };
        thread.start();

    }

    public void MoveTimeZapStud(int student, int komisia, String cas) {

        Thread thread = new Thread() {
            public void run() {
                CallableStatement cstmt = null;
                try {
                    cstmt = conn.prepareCall("{ call MOVETIME (?, ?, ?) }");

                    cstmt.setInt(1, student);
                    cstmt.setString(2, cas);
                    cstmt.setInt(3, komisia);
                    cstmt.execute();
                } catch (SQLException ex) {
                    Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        };
        thread.start();

    }

    public void ChangeGroup(int first, int f_kom, int second, int s_kom) {

        Thread thread = new Thread() {
            public void run() {
                CallableStatement cstmt = null;
                try {
                    cstmt = conn.prepareCall("{ call CHANGEGROUP (?, ?, ?, ?) }");

                    cstmt.setInt(1, first);
                    cstmt.setInt(2, f_kom);
                    cstmt.setInt(3, second);
                    cstmt.setInt(4, s_kom);
                    cstmt.execute();
                } catch (SQLException ex) {
                    Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        };
        thread.start();

    }

    public List<String[]> getTrebaZnovuZaradit() {

        List<String[]> test = new ArrayList<String[]>();
        try {
            Statement stmt = conn.createStatement();

            String selectStat = "select pr.id as cp, pr.NAZOV as naz, os.OS_CISLO as cislo, os.MENO as meno, os.PRIEZVISKO as priez, pr.OS_VEDUCI as veduci, \n"
                    + "pr.OS_OPONENT as oponent, pr.OS_TUTOR as tutor\n"
                    + "from praca pr\n"
                    + "join ZAP_STUDENTI zp on(pr.OS_STUDENT = zp.os_cislo)\n"
                    + "join osoba os on(os.os_cislo = pr.OS_STUDENT)\n"
                    + "where to_date(to_char(zp.CAS_ZACATIA, 'MM.YYYY'), 'MM.YYYY') > to_date( ('06.' || case when to_char(sysdate, 'MM') < '06' then  to_char(ADD_MONTHS(sysdate, -24), 'YYYY') \n"
                    + "else  to_char(ADD_MONTHS(sysdate, -12), 'YYYY') end), 'MM.YYYY')\n"
                    + "and to_date( to_char(zp.CAS_ZACATIA, 'MM.YYYY'), 'MM.YYYY') < to_date(('06.' || case when to_char(sysdate, 'MM') < '06' then to_char(ADD_MONTHS(sysdate, -12), 'YYYY')\n"
                    + "else  to_char(sysdate, 'YYYY') end), 'MM.YYYY') and pr.ROK = zp.ROK and pr.SEMESTER = zp.SEMESTER and \n"
                    + "(zp.ZNAMKA = 'Fx' or zp.ZNAMKA is null)";

            ResultSet resultSet = stmt.executeQuery(selectStat);

            while (resultSet.next()) {
                String[] o = new String[8];
                o[0] = resultSet.getString("cp");
                o[1] = resultSet.getString("naz");
                o[2] = resultSet.getString("cislo");
                o[3] = resultSet.getString("meno");
                o[4] = resultSet.getString("priez");
                o[5] = resultSet.getString("veduci");
                o[6] = resultSet.getString("oponent");
                o[7] = resultSet.getString("tutor");

                test.add(o);
            }

        } catch (SQLException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }

        return test;

    }

    public String FindNahradnik(int student, String rok, String semester) {

        final CountDownLatch latch = new CountDownLatch(1);
        final String[] result = new String[1];
        Thread thread = new Thread() {
            public void run() {
                CallableStatement cstmt = null;
                try {

                    cstmt = conn.prepareCall("{ call GETOTHENRKOMISIU (?, ?, ?, ?) }");

                    cstmt.setInt(1, student);
                    cstmt.setString(2, rok);
                    cstmt.setString(3, semester);
                    cstmt.registerOutParameter(4, oracle.jdbc.OracleTypes.CLOB);
                    cstmt.execute();
                    result[0] = cstmt.getString(4);
                    latch.countDown();
                } catch (SQLException ex) {
                    Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
                }

            }

        };
        thread.start();
        try {
            latch.await();
        } catch (InterruptedException ex) {
            Logger.getLogger(Service.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result[0];

    }

}
