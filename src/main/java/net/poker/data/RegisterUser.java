package net.poker.data;

public interface RegisterUser {
    String KEY = "RegisterUser";
    boolean register(String username, String password, String confirm);
}
