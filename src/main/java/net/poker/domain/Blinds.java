package net.poker.domain;

public class Blinds {
    private int bigBlind;
    private int smallBlind;
    private int blindIndex;

    public void setBigBlind(int bigBlind) {
        this.bigBlind = bigBlind;
    }

    public int getBigBlind() {
        return bigBlind;
    }

    public void setSmallBlind(int smallBlind) {
        this.smallBlind = smallBlind;
    }

    public int getSmallBlind() {
        return smallBlind;
    }

    public void setBlindIndex(int blindIndex) {
        this.blindIndex = blindIndex;
    }

    public int getBlindIndex() {
        return blindIndex;
    }
}
