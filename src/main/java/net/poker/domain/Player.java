package net.poker.domain;

import java.util.ArrayList;
import java.util.List;

public class Player {
    private final String username;
    private final int userId;
    private int chips;
    private List<Integer> hand = new ArrayList<>(2);

    public Player(String username, int userId) {
        this.username = username;
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public int getUserId() {
        return userId;
    }

    public int getChips() {
        return chips;
    }

    public void addChips(int change) {
        chips += change;
    }

    public void clearHand() {
        hand.clear();
    }

    public void addToHand(int card) {
        hand.add(card);
    }

    public String toString() {
        return String.format("username: %1$s userId: %2$d chips: %3$d", username, userId, chips);
    }
}
