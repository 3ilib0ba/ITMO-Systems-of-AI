import javafx.util.Pair;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;

public class Main {
    static HashMap<String, ArrayList<Pair<String, Integer>>> adj;
    static HashMap<String, Integer> paths;
    static HashMap<String, String> lhs, rhs;
    static HashMap<String, Boolean> visited1, visited2;

    public static void main(String[] args) {
        adj = new HashMap<>();
        paths = new HashMap<>();
        lhs = new HashMap<>();
        rhs = new HashMap<>();
        visited1 = new HashMap<>();
        visited2 = new HashMap<>();

        LoadData.load_data_cities("C:\\LocalDesktop\\ITMO-All\\Systems-of-AI\\ITMO-Systems-of-AI\\Lab-2\\src\\data.txt");
    }
}
