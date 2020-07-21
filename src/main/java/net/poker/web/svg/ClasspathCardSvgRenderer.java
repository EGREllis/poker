package net.poker.web.svg;

import net.poker.domain.Card;

import java.util.logging.Logger;

public class ClasspathCardSvgRenderer implements CardSvgRenderer {
    private final Logger logger = Logger.getLogger(this.getClass().getCanonicalName());

    @Override
    public String getSvgForCardAt(Card card, int x, int y) {
        return null;
    }
}
