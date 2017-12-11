pragma solidity ^0.4.11;

contract ERC20 {
    function totalSupply() constant  public returns (uint supply);
    function balanceOf( address who ) constant public returns (uint value);
    function allowance( address owner, address spender ) constant   public returns (uint _allowance);

    function transfer( address to, uint value) public returns (bool ok);
    function transferFrom( address from, address to, uint value) public returns (bool ok);
    function approve( address spender, uint value )public  returns (bool ok);

    event Transfer( address indexed from, address indexed to, uint value);
    event Approval( address indexed owner, address indexed spender, uint value);
}