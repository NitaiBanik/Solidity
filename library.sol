pragma solidity >=0.7.0 <0.9.0;

library Search{
    function indexOf(uint[] storage self, uint value) public view returns(int){
        for(uint i = 0; i < self.length; i++){
            if(self[i] == value) return int(i);
        }
        return -1;
    }
}

contract Test{
    using Search for uint[];
    uint[] data;

    constructor() public{
        data.push(1);
        data.push(4);
        data.push(5);
        data.push(8);
    }

    function getIndex(uint value) external view returns(int){
        return Search.indexOf(data, value);
    }
    function getIndexWay2(uint value) external view returns(int){
        return data.indexOf(value);
    }
}