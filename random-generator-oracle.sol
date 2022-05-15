pragma solidity >=0.7.0 <0.9.0;

contract Oracle {
    address public admin;
    uint public rand;

    constructor()  public {
        admin = msg.sender;
    }

    function setRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }
}

contract GenerateRandomNumber{
    Oracle oracle;

    constructor(address oracleAddess) {
        oracle = Oracle(oracleAddess);
    }

    function random(uint range) external view returns(uint){
        return uint(keccak256(abi.encodePacked(oracle.rand, block.timestamp, block.difficulty, msg.sender))) % range;
    }

    function getAdmin() public view returns(address){
        return address(oracle.admin());
    }
}