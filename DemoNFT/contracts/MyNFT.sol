pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MyNFT is ERC721URIStorage,Ownable{

using Counters for Counters.Counter;
Counters.Counter private _tokenId;

constructor() ERC721("MyNFT","NFT"){

}
    function mintNFT(address recipient,string memory tokenURI) public onlyOwner {
     _tokenId.increment();
    uint256 newId=_tokenId.current();
    _mint(recipient,newId);
    _setTokenURI(newId,tokenURI);

}

}

// 0x5FbDB2315678afecb367f032d93F642f64180aa3