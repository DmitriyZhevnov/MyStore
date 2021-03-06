package classes;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Order {
    private int number;
    private List<Product> listOfProducts = new ArrayList<>();
    private LocalDateTime dateTime;
    private String address;
    private String phoneNumber;
    private String login;

    public Order(List<Product> listOfProducts) {
        this.listOfProducts.addAll(listOfProducts);
        dateTime = LocalDateTime.now();
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getAddress() {
        return address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public double getTotalCostOfOrder() {
        double totalCost = 0;
        for (int i = 0; i < listOfProducts.size(); i++) {
            totalCost += getListOfProducts().get(i).getPrice() * getListOfProducts().get(i).getCount();
        }
        return totalCost;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public List<Product> getListOfProducts() {
        return listOfProducts;
    }

    public void setListOfProducts(List<Product> listOfProducts) {
        this.listOfProducts = listOfProducts;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }
}
