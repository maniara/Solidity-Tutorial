{\rtf1\ansi\ansicpg949\cocoartf1561\cocoasubrtf100
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 interface ERC20Interface \{\
    function totalSupply() public constant returns (uint);\
    function balanceOf(address tokenOwner) public constant returns (uint balance);\
    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);\
    function transfer(address to, uint tokens) public returns (bool success);\
    function approve(address spender, uint tokens) public returns (bool success);\
    function transferFrom(address from, address to, uint tokens) public returns (bool success);\
\
    event Transfer(address indexed from, address indexed to, uint tokens);\
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);\
\}}