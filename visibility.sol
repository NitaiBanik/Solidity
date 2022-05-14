pragma solidity >=0.4.25 <0.7.0;

contract multiplyCalculator{
    constructor() public{}

    function calculator(uint a, uint b) public returns(uint){
        return a*b;
    }
}