// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface FuseFiStaking {
    function stake(uint256 _amount) external;
    function withdrawStakeAndInterest(uint256 _amount) external;
    function withdrawInterest() external;
    function getStakeToken() external view returns (address);
    function getRewardToken() external view returns (address);
    function getStakerData(address _staker) external view returns (uint256 totalStaked, uint256 withdrawnToDate);
}