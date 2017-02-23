
import java.util.*;
import java.io.*;

public class Sudoku {
    public static void main(String[] args) throws FileNotFoundException {
        Scanner console = new Scanner(System.in);
        System.out.print("Sudoku file? ");
        Scanner input = new Scanner(new File(console.nextLine()));
        Grid g;
        System.out.print("include animation (y/n)? ");
        if (console.next().toLowerCase().startsWith("y"))
            g = new GridFrame(input);
        else
            g = new Grid(input);
        solve(g);
        System.out.println();
        System.out.println("Total calls on place = " + g.getPlaceCount());
    }

    // pre : grid is legal (all values placed are legal)
    // post: fills grid if possible (returning true); else returns false
    public static boolean explore(Grid g) {
        int cellNumber = g.getUnassignedLocation();
        if (cellNumber == -1)
            return true;
        else {
            for (int n = 1; n <= 9; n++)
                if (g.noConflicts(cellNumber, n)) {
                    g.place(cellNumber, n);
                    if (explore(g))
                        return true;
                    g.remove(cellNumber);
                }
            return false;
        }
    }
          
    // post: explores all possibilities for solving, either reporting the first
    //       solution it finds or reporting that no solution could be found
    public static void solve(Grid g) {
        if (!explore(g))
            System.out.println("No solution.");
        else {
            System.out.println("One solution is as follows:");
            g.print();
        }
    }
}
