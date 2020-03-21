package de.govhackathon.wvsvcoronatracker.services;

import de.govhackathon.wvsvcoronatracker.model.Position;

import java.time.LocalDateTime;
import java.util.List;

public interface PositionsService {

    /**
     * Save given position
     *
     * @return Saved position
     */
    Position savePosition(Position position);

    /**
     * Get all positions
     *
     * @return List of all positions, empty collection if none available
     */
    List<Position> getPositions();

    /**
     * Get all positions starting from date till now
     *
     * @param from date to get positions from
     * @return List of all positions, starting from date specified, empty collection if none available
     */
    List<Position> getPositionsFrom(final LocalDateTime from);

    /**
     * Get all positions until date specified
     *
     * @param to date to get positions until
     * @return List of all positions, ending at date specified, empty collection if none available
     */
    List<Position> getPositionsTo(final LocalDateTime to);

    /**
     * Get all positions within the dates specified
     *
     * @param from date to get positions from
     * @param to   date to get positions until
     * @return List of all positions between the dates specified, empty collection if none available
     */
    List<Position> getPositionsFromTo(final LocalDateTime from, final LocalDateTime to);

    /**
     * Get specified positions
     *
     * @param id List of position ids
     * @return List of requested positions
     */
    List<Position> getPositionsTo(final List<Integer> id);

    /**
     * Get all users positions
     *
     * @param userId users id
     * @return List of all positions for a specific user, empty collection if none available
     */
    List<Position> getPositionsByUserId(final Integer userId);

    /**
     * Get all users positions starting from date till now
     *
     * @param userId users id
     * @param from   date to get positions from
     * @return List of all positions for a specific user, starting from date specified, empty collection if none available
     */
    List<Position> getPositionsByUserIdFrom(final Integer userId, final LocalDateTime from);

    /**
     * Get all users positions until date specified
     *
     * @param userId users id
     * @param to     date to get positions until
     * @return List of all positions for a specific user, ending at date specified, empty collection if none available
     */
    List<Position> getPositionsByUserIdTo(final Integer userId, final LocalDateTime to);

    /**
     * Get all users positions within the dates specified
     *
     * @param userId users id
     * @param from   date to get positions from
     * @param to     date to get positions until
     * @return List of all positions for a specific user between the dates specified, empty collection if none available
     */
    List<Position> getPositionsByUserIdFromTo(final Integer userId, final LocalDateTime from, final LocalDateTime to);

}
