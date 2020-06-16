package net.poker.data.simple;

import net.poker.data.RegisterUser;
import net.poker.data.SignInUser;

import java.util.HashMap;
import java.util.Map;

public class UserMap implements RegisterUser, SignInUser {
    private final Map<String,String> userPasswords;
    private final Map<String,Integer> userIds;

    public UserMap() {
        userPasswords = new HashMap<>();
        userIds = new HashMap<>();
    }

    @Override
    public boolean register(String username, String password, String confirm) {
        boolean success = false;
        if (password.equals(confirm) && !userPasswords.containsKey(username)) {
            userPasswords.put(username, password);
            userIds.put(username, userIds.size()+1);
            success = true;
        }
        return success;
    }

    @Override
    public int signInUser(String username, String password) {
        int userId = 0;
        if (userPasswords.containsKey(username) && userPasswords.get(username).equals(password)) {
            userId = userIds.get(username);
        }
        return userId;
    }
}
