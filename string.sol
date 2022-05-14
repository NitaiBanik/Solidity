pragma solidity >=0.4.25 <0.7.0;

contract strings{

    string greetings = "Hi Nitai";
    
    function getGreetings() public view returns(string memory){
        return greetings;
    }

    function changeGreetings(string memory newGreetings) public{
        greetings = newGreetings;
    }
    function getGreetingsLength() public view returns(uint){
        bytes memory greetingsBytes = bytes(greetings);
        return greetingsBytes.length;
    }
}