pragma solidity >= 0.7.0 < 0.9.0;

contract Kudos {
    
    mapping(address => Kudo[]) allKudos;
    
    function giveKudos(address who, string memory what, address giver, string memory comments) public {
        Kudo memory kudo = Kudo(what, giver, comments);
        allKudos[who].push(kudo);
    }
}

struct Kudo {
    string what;
    address from;
    string comments;
}




/*
gary: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
andrew: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

*/
