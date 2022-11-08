import java.util.*;
class coderunner{
  public static void main(String[] args){
    Scanner obj1 = new Scanner(System.in);
    System.out.print("ENTER TEXT TO BE CONVERTED: ");
    String s = obj1.nextLine();
    System.out.print("ENTER BASE TO BE CONVERTED FROM: ");
    int a = obj1.nextInt();
    System.out.print("ENTER BASE TO BE CONVERTED TO: ");
    int b = obj1.nextInt();
    ncs obj2 = new ncs();
    obj2.convertBase(s,a,b);
  }
}
