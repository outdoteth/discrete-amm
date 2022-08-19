// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {Merkle} from "murky/Merkle.sol";

import "../src/Factory.sol";
import "./MockERC721.sol";

contract Fixture is Test {
    Factory public f;
    MockERC721 public bayc;
    Merkle public m;
    bytes32[] public tokenIdData;

    constructor() {
        f = new Factory();
        bayc = new MockERC721("fake bayc", "fbayc");

        m = new Merkle();
        tokenIdData.push(bytes32(uint256(1)));
        tokenIdData.push(bytes32(uint256(2)));
        tokenIdData.push(bytes32(uint256(3)));
        tokenIdData.push(bytes32(uint256(4)));

        bayc.mint(address(this), 1);
        bayc.mint(address(this), 2);
        bayc.mint(address(this), 3);
        bayc.mint(address(this), 4);
    }
}
