import javafx.util.Pair;

import javax.sound.midi.Soundbank;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class LoadData {

    public static void load_data_cities(String path) {
        String first, second;
        Integer distance;
        FileReader allFile = null;
        try {
            allFile = new FileReader(path);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        char b = 0;
        while (allFile.ready())
        try {
            b = (char) allFile.read();
            System.out.print(b);
        } catch (IOException e) {
            e.printStackTrace();
        }


        String[] scanner = new String[1];//allFile.read().split(" ");

        System.out.println(Arrays.toString(scanner));

        ArrayList<Pair<String, Integer>> tmp;
        for (int i = 0; i < scanner.length;) {
            first = scanner[i++];
            second = scanner[i++];
            distance = Integer.valueOf(scanner[i++]);

            System.out.println(first + " -- " + second + " == " + distance);

            tmp = Main.adj.get(first);
            if (tmp != null) {
                tmp.add(new Pair<String, Integer>(second, distance));
            } else {
                tmp = new ArrayList<>();
                tmp.add(new Pair<>(second, Integer.valueOf(distance)));
                ArrayList tmp2 = (ArrayList) tmp.clone();
                Main.adj.put(first, tmp2);
            }

        }

        for (String key : Main.adj.keySet()) {
            System.out.println(key + " " + Arrays.toString(Main.adj.get(key).toArray()));
        }
    }

    public static void load_forward_paths() {


    }
}
