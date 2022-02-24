pragma solidity ^0.8.0;

contract TestToken {

    uint256 public totalSupply;
    string public name = "Test Token";
    string public symbol = "TTT";

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    constructor(uint256 _totalSupply) public {
        totalSupply = _totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_value <= balanceOf[msg.sender]);

        balanceOf[_to] += _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);

        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {

        return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) {

        return true;
    }
}
