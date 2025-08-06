
import java.util.Scanner;
 
public class GirlsSecuritySystem {
    static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        int choice;
        System.out.println("👩‍💻 Girls' Security System - by Meera Chavan");

        do {
            System.out.println("\n------ MENU ------");
            System.out.println("1. Emergency Alert");
            System.out.println("2. Send Location");
            System.out.println("3. Exit");
            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();
            scanner.nextLine(); // clear buffer

            switch (choice) {
                case 1:
                    System.out.println("🚨 Alert Sent to Guardian and Police!");
                    break;
                case 2:
                    System.out.println("📍 Location Sent: Latitude 18.5204, Longitude 73.8567");
                    break;
                case 3:
                    System.out.println("👋 Exiting... Stay Safe!");
                    break;
                default:
                    System.out.println("❌ Invalid choice. Try again.");
            }
        } while (choice != 3);
    }
} 
