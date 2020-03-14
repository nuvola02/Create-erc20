pragma solidity ^0.6.0;

import "./Context.sol";
import "./ERC20.sol";
import "./ERC20Detailed.sol";
import "./ERC20Burnable.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SimpleToken is Context, ERC20, ERC20Detailed, ERC20Burnable {
    

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    constructor () public ERC20Detailed("TestCoinSecond", "TCS", 18) {
        _mint(_msgSender(), 10 * (10 ** uint256(decimals())));
    }
}
