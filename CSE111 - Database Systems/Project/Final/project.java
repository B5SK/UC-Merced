import java.sql.*;
import java.io.*;
import java.util.Scanner;

public class project extends queries{
	public static Connection connect;
	public static Scanner scan = new Scanner(System.in);
	//public static String inputString1 = "";
	//public static String inputString2 = "";
	//public static int inputInt1 = 0;
	//public static int inputInt2 = 0;
	
	
	public static void adminOptions(){
		System.out.println("What would you like to do?");		
		System.out.println("1. Update Price of certain Part from a certain Supplier");
		System.out.println("2. Insert New Part");
		System.out.println("3. Delete Existing Part");
		System.out.println("4. Change Amount of a specific Part In Stock");
		System.out.println("0. Go Back");
		
		int userInput = scan.nextInt();
		
		if(userInput < 0 || userInput > 5){
			System.out.println("You have entered an invalid input, please try again...");
			System.out.println();
			adminOptions();
		}
		else if(userInput == 1){
			while(userInput != 0){
				System.out.println("Would you like to update manually or automatically using the Internet?");
				System.out.println("1. Manual");
				System.out.println("2. Automatic");
				System.out.println("0. Back");
				userInput = scan.nextInt();
			
				if(userInput == 1){//Manual
					System.out.println("Please enter the supplier that you will update from the following list: ");
					System.out.println("Newegg, Amazon, ComputerUniverse, Micro Center");
					scan.nextLine();
					String supplier = scan.nextLine();
					
					System.out.println("Please enter the part name that you will update: ");
					adminListParts(supplier);
					
					String part = scan.nextLine();//Now has part name
					
					System.out.print("Please enter the price: $");
					double price = scan.nextDouble();
					
					adminOption1o1(supplier, part, price);
					
					double rprice = adminPriceOfOnePart(supplier, part);
					
					System.out.println("The database is now updated. The result is shown below ");
					System.out.println();
					System.out.println("----------------------------------------------------");
					System.out.println(supplier + " | " + part + " | $" + rprice);
					System.out.println("----------------------------------------------------");
					System.out.println();
					
				}
				else if(userInput == 2){//Automatic
					System.out.println("Please enter the supplier that you want to update from the following list: ");
					System.out.println("Newegg, Amazon, ComputerUniverse, Micro Center");
					scan.nextLine();
					String supplier = scan.nextLine();
					
					System.out.println();
					System.out.println("Please enter the NUMBER and then NAME that you want to update: ");
					//System.out.println("ALP:");
					adminListParts(supplier);
					
					System.out.println("Number: ");
					int part = scan.nextInt();//Now has part name
					
					System.out.println("Name: ");
					scan.nextLine();
					String name = scan.nextLine();
					
					double price = Retriever(supplier, part);
					
					/*System.out.println("-----");
					System.out.println("Print price from automatic update");
					System.out.println("Price: " + price);*/
					
					//System.out.println("Auto Price: " + price);
					if(price != -1 && price != 0){
						//System.out.println("AO1o1:");
					adminOption1o1(supplier, name, price);
					
					double rprice = adminPriceOfOnePart(supplier, name);
					
					System.out.println("The database is now updated. The result is shown below ");
					System.out.println();
					System.out.println("----------------------------------------------------");
					System.out.println(supplier + " | " + name + " | $" + rprice);
					System.out.println("----------------------------------------------------");
					System.out.println();
					}
					
					adminOptions();
					
				}
				else if(userInput == 0){//Go back to Admin menu
					adminOptions();
				}
				else{
					System.out.println("You have entered an invalid number. Please try again");
					System.out.println("---------------------------------------------------------");
				}
			}
		}
		else if(userInput == 2){//Insert New Part
			System.out.println("----------------------------------------");
			System.out.println("Inserting new Part");
			System.out.println();
			System.out.println("Note-");
			System.out.println("Needed: Part Name, Part Type");
			
			String name;
			String type;
			
			System.out.println("Enter the name. Be as specific as possible");
			scan.nextLine();
			name = scan.nextLine();
			
			System.out.println("Enter the type from the following list: ");
			System.out.println("CPU, MOTHERBOARD, RAM, STORAGE, POWER SUPPLY, CASE, MONITOR, VIDEO CARD");
			type = scan.nextLine();
			
			adminOption2(name, type);
			
			System.out.println();
			System.out.println("Here is the full list: ");
			
			userOption1();
			
			adminOptions();
		}
		else if(userInput == 3){//Delete part
			System.out.println();
			System.out.println("From the following list, enter the part name to delete");
			
			userOption1();
			
			scan.nextLine();
			String delete = scan.nextLine();
			
			adminOption3(delete);
			
			System.out.println();
			System.out.println("Here is the full list: ");
			
			userOption1();
			
			adminOptions();
			
		}
		else if(userInput == 4){//Change the amount in stock
			System.out.println();
			System.out.println("In order to change the amount, you need:");
			System.out.println("Part Name, Supplier, And Amount");
			
			String name;
			String supplier;
			int amount;
			System.out.println();
			System.out.println("From the following list, Enter the Part Name: ");
			userOption1();
			scan.nextLine();
			name = scan.nextLine();
			
			System.out.println();
			System.out.println("From the following list: Enter the Supplier: ");
			System.out.println("Newegg, Amazon, ComputerUniverse, Micro Center");
			supplier = scan.nextLine();
			
			System.out.println("Enter the amount in numbers: ");
			amount = scan.nextInt();
			
			adminOption4(name, supplier, amount);
			
			System.out.println();
			System.out.println("Here is the result: ");
			adminOutputAvailability(name, supplier);
			System.out.println();
			
			adminOptions();
			
		}
		else if(userInput == 0){
			chooseUserAdmin();
		}
	}
	
	public static void userOptions(){
		System.out.println("What would you like to do?");
		System.out.println("1. Search all parts in database");
		System.out.println("2. Search items by part type");
		System.out.println("3. Search items sold by a specific supplier");
		System.out.println("4. Search for item between two prices");
		System.out.println("5. Search for items by part, supplier, and price");
		System.out.println("6. Check availibility and stock of all items");
		System.out.println("0. Back");
		int userInput = scan.nextInt();
		if(userInput < 0 || userInput > 6){
			System.out.println("You have entered an invalid input, please try again...");
			System.out.println();
			userOptions();
		}
		if(userInput == 1){
			userOption1();
		}
		else if(userInput == 2){
			System.out.println("Please enter a part you wish to search for");
			System.out.print("(You may enter: CPU, MOTHERBOARD, RAM, STORAGE, POWER SUPPLY, CASE, MONITOR, VIDEO CARD): ");
			scan.nextLine();
			String inputType = scan.nextLine();
			System.out.println("You entered: "+inputType);
			userOption2(inputType);
		}
		else if(userInput == 3){
			System.out.print("Please enter the supplier(Newegg, Amazon, ComputerUniverse, Micro Center): ");
			scan.nextLine();
			String inputSupplier = scan.nextLine();
			userOption3(inputSupplier);
		}
		else if(userInput == 4){
			System.out.print("Enter lowest price: $");
			scan.nextLine();
			String lowestPrice = scan.nextLine();
			System.out.print("Enter highest price: $");
			String highestPrice = scan.nextLine();
			System.out.println();
			userOption4(lowestPrice, highestPrice);
		}
		else if(userInput == 5){
			System.out.println("Please enter a part you wish to search for");
			System.out.print("(You may enter: CPU, MOTHERBOARD, RAM, STORAGE, POWER SUPPLY, CASE, MONITOR, VIDEO CARD): ");
			scan.nextLine();
			String inputType = scan.nextLine();
			System.out.print("Please enter the supplier(Newegg, Amazon, ComputerUniverse, Micro Center): ");
			String inputSupplier = scan.nextLine();
			System.out.print("Enter lowest price: $");
			String lowestPrice = scan.nextLine();
			System.out.print("Enter highest price: $");
			String highestPrice = scan.nextLine();
			userOption5(inputType, inputSupplier, lowestPrice, highestPrice);
		}
		else if(userInput == 6){
			userOption6();
		}
		else{//option 5 goes back to choose user or admin
			chooseUserAdmin();
		}
		userOptions();
		
	}
	
	/*public static void loginAdmin(){
		System.out.print("Password: ");
		String password = scan.next();
		System.out.println("You entered " + password);
		if(password == "abc"){
			adminOptions();
		}
		else{
			System.out.println("You entered the wrong password");
			chooseUserAdmin();
		}	
	}*/
	
	public static void end(){
		scan.close();
		System.exit(0);
	}
	
	public static void chooseUserAdmin(){
		System.out.println("Are you a User or Admin (enter 1 for user, 2 for admin, 0 to quit)");
		System.out.println("1. User");
		System.out.println("2. Admin");
		System.out.println("0. Quit");
		int input = scan.nextInt();
		if(input < 0 || input > 2){
			System.out.println("You have entered an invalid input, please try again...");
			System.out.println();
			chooseUserAdmin();
		}
		if(input == 1){
			System.out.print("Welcome User! ");
			userOptions();
		}
		else if(input == 2){
			//loginAdmin();
			System.out.print("Welcome Admin!: ");
			adminOptions();
		}
		else{
			System.out.print("Program Finished");
			end();
		}
		
	}

	
	public static void main(String[] args) {
		System.out.println("Welcome to Computer Parts Database!");
		chooseUserAdmin();
		
	}

}
