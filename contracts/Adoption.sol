pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    //adopt a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >=0 && petId <= 25);
        
        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }


}
