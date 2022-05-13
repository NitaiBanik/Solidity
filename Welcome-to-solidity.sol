pragma solidity >=0.4.25 <0.7.0;

contract WelcomeSolidity{
    constructor() public{}
    function getResult() public view returns(uint){
    uint result = 1 + 2;
    return result;
    }

    function getHundread() public view returns(uint){
    return 100;
    }
}