pragma solidity ^0.5.9;
pragma experimental ABIEncoderV2;

import "./Oracle.sol";

/**
 * @title The Open Oracle View Base Contract
 * @author Compound Labs, Inc.
 */
contract View {
    /**
     * @notice The Oracle Data Contract backing this View
     */
    Oracle public oracle;

    /**
     * @notice The static list of sources used by this View
     * @dev Note that while it is possible to create a view with dynamic sources,
     *  that would not conform to the Open Oracle Standard specification.
     */
    address[] public sources;

    /**
     * @notice Construct a view given the oracle backing address and the list of sources
     * @dev According to the protocol, Views must be immutable to be considered conforming.
     * @param oracle_ The address of the oracle data contract which is backing the view
     * @param sources_ The list of source addresses to include in the aggregate value
     */
    constructor(Oracle oracle_, address[] memory sources_) public {
        oracle = oracle_;
        sources = sources_;
    }
}
