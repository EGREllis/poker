package net.poker.web.svg;

import net.poker.domain.Card;

public interface CardSvgRenderer {
    String getSvgForCardAt(Card card, int x, int y);
}
