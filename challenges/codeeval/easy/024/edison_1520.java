import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        int suma=0;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
            suma=suma+Integer.parseInt(line);
        }
        System.out.println(suma);
    }
}
