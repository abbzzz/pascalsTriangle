import java.util.Scanner; // import user input
class pascal {
  public static void main(String[] args) {
    
    Scanner scanner = new Scanner(System.in);
    System.out.print("Please enter numerical value for Pascal's Triangle: ");
    int width = scanner.nextInt(); // input user width for triangle
    int space = width; //accounts for spaces
    int num = 1;
 
    for (int i = 0; i < width; i++) {
      for (int j = 1; j <= space; j++) {
        System.out.print(" "); // accounts for spaces in traingle
      }
      
      num = 1;
      System.out.printf("%" + (width - i) * 2 + "s", "");
      for (int k = 0; k <= i; k++) {
        System.out.printf("%4d", num);
        num = num * (i - k) / (k + 1);
      }
      System.out.println();
    }
  }
}
