// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract simplestorage {
    uint my_integer = 10;
    bool my_boolean = true;
    string my_string = "hello world";
    address my_address = 0x0000000000000000000000000000000000000001;
    bytes my_bytes = "hello, world";
   uint256 public favoriteNumber;

   
struct people{
    uint256 favoriteNumber;
    string name;
}

  people public person = people ({favoriteNumber:7, name:"fahri"});
  people [] public Orang;
  function store(uint256 _favoriteNumber) public {
    my_integer = _favoriteNumber;
  }
  function retrive() public view returns (uint256){
return my_integer;
}
function addOrang(uint256 _favoriteNumber, string memory _name)public {
    Orang.push(people(_favoriteNumber, _name));
}
}