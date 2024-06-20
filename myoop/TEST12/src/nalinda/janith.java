package nalinda;

import java.util.Scanner;

public class janith {
	public static void main(String args[]) {
	
		int age;
		String name;
	
	Scanner s = new Scanner(System.in);
	
	System.out.print("enter the name :");
	name = s.next();
	
	System.out.print("enter your int :");
	age =s.nextInt();
	
	System.out.println("Name=" +name);
	System.out.println("ages=" +age);

}
}