pragma solidity ^0.4.11;

import './DSAuth.sol';
import './DSNote.sol';

contract DSStop is DSAuth, DSNote {

    bool public stopped;

    modifier stoppable {
        assert (!stopped);
        _;
    }
    function stop() auth note public {
        stopped = true;
    }
    function start() auth note public{
        stopped = false;
    }

}