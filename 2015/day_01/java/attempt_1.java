import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class attempt_1 {
    public static void main(String[] args) throws IOException {
        String input = new String(Files.readAllBytes(Paths.get("../input.txt"))).trim();

        int floor = 0;
        int position = 0;
        int firstBasement = -1;

        for (int i = 0; i < input.length(); i++) {
            char c = input.charAt(i);
            if (c == '(') {
                floor++;
            } else if (c == ')') {
                floor--;
            }
            if (floor == -1 && firstBasement == -1) {
                firstBasement = i + 1;
            }
        }

        System.out.println("Part 1: Final floor = " + floor);
        System.out.println("Part 2: First basement position = " + firstBasement);
    }
}
