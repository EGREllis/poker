package net.poker.domain;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Table {
    private List<Player> players;
    private List<Card> cards;
    private Blinds blinds;
    private int pot;

    public Table() {
        players = new ArrayList<>();
        cards = new ArrayList<>();
        pot = 0;
    }

    public List<Player> getPlayers() {
        return Collections.unmodifiableList(players);
    }

    public List<Card> getCards() {
        return Collections.unmodifiableList(cards);
    }

    public Blinds getBlinds() {
        return blinds;
    }

    public int getPot() {
        return pot;
    }
}
