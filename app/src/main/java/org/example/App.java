/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package org.example;

public class App {
    public static void main(String[] args) {
        String username = "admin";
        String password = "password123"; // Hardcoded password
        
        if ("admin".equals(username) && "password123".equals(password)) {
            System.out.println("Access granted.");
        } else {
            System.out.println("Access denied.");
        }
    }
}