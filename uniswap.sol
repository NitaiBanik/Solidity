pragma solidity >=0.7.0 <0.9.0;

interface IUniswapV2Factory{
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface IUniswapV2Pair{
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
} 

contract MyContract{
    address private factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
    address private dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address private weth = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function getReserveTokens() external view returns(uint, uint){
        address pair = IUniswapV2Factory(factory).getPair(dai, weth);

        (uint reserve0, uint reserve1,) = IUniswapV2Pair(pair).getReserves();

        return (reserve0, reserve1);
    }
}