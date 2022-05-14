pragma solidity >=0.7.0 <0.9.0;

contract base {
    uint age;
    
    constructor(uint _age) public {
        age = _age;
    }

    function getAge() public view returns(uint) {
        return age;
    }
}


contract Derived is base(5){
        function getAgeData() public view returns(uint) {
        return getAge();
    }
}