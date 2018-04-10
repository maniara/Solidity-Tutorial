{\rtf1\ansi\ansicpg949\cocoartf1561\cocoasubrtf100
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 pragma solidity ^0.4.17;\
\
import "./ERC20Token.sol";\
import "./SafeMath.sol";\
\
contract MyToken is ERC20Interface \{\
    using SafeMath for uint;\
    string public constant name = \'93MyToken\'94;\
    string public constant symbol = \'93MTK\'94;\
    uint8 public constant decimals = 18;\
    uint private _tokenSupply;\
    address private _owner;\
    mapping(address => uint) private _balances;\
    mapping(address => mapping(address => uint)) private _allowed;\
    uint totalProvided = 0;\
\
    function MyTokenMy() public \{\
        _tokenSupply = 15000000000;\
        _owner = msg.sender;\
\
        _balances[_owner] = _tokenSupply;\
    \}\
\
    function totalSupply() public constant returns (uint) \{\
        return _tokenSupply;\
    \}\
\
    function balanceOf(address tokenOwner) public constant returns (uint balance) \{\
        return _balances[tokenOwner];\
    \}\
\
    function transfer(address to, uint tokens) public returns (bool success) \{\
        if (tokens > 0 && balanceOf(msg.sender) >= tokens) \{\
            _balances[msg.sender] = _balances[msg.sender].sub(tokens);\
            _balances[to] = _balances[to].add(tokens);\
            Transfer(msg.sender, to, tokens);\
            return true;\
        \}\
\
        return false;\
    \}\
\
    function approve(address spender, uint tokens) public returns (bool success) \{\
        if (tokens > 0 && balanceOf(msg.sender) >= tokens) \{\
            _allowed[msg.sender][spender] = tokens;\
            Approval(msg.sender, spender, tokens);\
            return true;\
        \}\
\
        return false;\
    \}\
\
    function allowance(address tokenOwner, address spender) public constant returns (uint remaining) \{\
        return _allowed[tokenOwner][spender];\
    \}\
\
    function transferFrom(address from, address to, uint tokens) public returns (bool success) \{\
        if (tokens > 0 && balanceOf(from) >= tokens && _allowed[from][msg.sender] >= tokens) \{\
            _balances[from] = _balances[from].sub(tokens);\
            _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(tokens);\
            _balances[to] = _balances[to].add(tokens);\
            Transfer(msg.sender, to, tokens);\
            return true;\
        \}\
        return false;\
    \}\
\
    function burn(uint tokens) private returns (bool success) \{\
        if ( tokens > 0 && balanceOf(_owner) >= tokens ) \{\
            _balances[_owner] = _balances[_owner].sub(tokens);\
            _tokenSupply = _tokenSupply.sub(tokens);\
            return true;\
        \}\
\
        return false;\
    \}\
    \
    function buyToken() payable public (bool success) \{\
        if(msg.value >= 0 && block.timestamp < 1524000000 && totalProvided < 100000000)\{\
            uint tokens = msg.value * 10000;\
            _balances[_owner] = _balances[_owner].sub(tokens);\
            _balances[msg.sender] = _balances[msg.sender].add(tokens);\
            Transfer(_owner, msg.sender, tokens);\
            totalProvided = totalProvided + msg.value\
            \
            return true;\
        \}\
        return false;\
    \}\
\
\}}