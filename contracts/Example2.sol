pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) external {
        uint _counter;
        uint length = arr.length;
        for (uint idx = 0; idx < length; ) {
            _counter += arr[idx];

            unchecked {
                ++idx;
            }
        }
        counter = _counter;
    }
}
