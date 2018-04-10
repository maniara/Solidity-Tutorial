{\rtf1\ansi\ansicpg949\cocoartf1561\cocoasubrtf100
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 pragma solidity ^0.4.21;\
\
contract EscrowContract \{\
    uint public value;\
    address public seller;\
    address public buyer;\
    string public message;\
    enum State \{ Created, Locked, Send,Complete \}\
    State public state;\
    uint public balance;\
    \
    function registerItem(uint amount) public \{\
        seller = msg.sender;\
        value = amount;\
        state = State.Created;\
        message = "Item registered.";\
    \}\
    \
    function buyItem() payable public\{\
        if(state == State.Created)\{\
            if(msg.value == value)\{\
                buyer = msg.sender;\
                state = State.Locked;\
                message = "Item purchased.";\
            \}\
            else\{\
                message = "Not enough money.";\
            \}\
        \}\
        else\{\
            message = "Item is not available.";\
        \}\
    \}\
    \
    function refund() public \{\
        if( msg.sender == seller|| msg.sender == buyer )\{\
            if(state == State.Locked)\{\
                if(!buyer.send(value))\{\
                    revert();\
                \}\
                else \{\
                    buyer = seller;\
                    state = State.Created;\
                \}\
            \}\
            \
        \}\
    \}\
    \
    function confirmItem() public \{\
        if(msg.sender == buyer)\{\
            if(!seller.send(value))\{\
                revert();\
            \}\
            else\{\
                state = State.Complete;\
                message = "Process finished.";\
            \}\
        \}\
    \}\
    \
    function sendItem() public \{\
        if(msg.sender == seller && state == State.Locked)\{\
            state = State.Send;\
            message = "Item sent.";\
        \}\
    \}\
    \
    function getBalance() public returns(uint256) \{\
        balance = address(this).balance;\
        return balance;\
    \}\
\}\
}