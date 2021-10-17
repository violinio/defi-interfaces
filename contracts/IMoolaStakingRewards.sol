// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IMoolaStakingRewards {

    function balanceOf(address account) external view returns (uint256);

    function earned(address account) external view returns (uint256);

    function earnedExternal(address account)
        external
        returns (uint256[] memory result);

    function exit() external;

    function externalRewards(address, address) external view returns (uint256);

    function externalRewardsTokens(uint256) external view returns (address);

    function externalStakingRewards() external view returns (address);

    function getReward() external;

    function getRewardForDuration() external view returns (uint256);

    function lastTimeRewardApplicable() external view returns (uint256);

    function lastUpdateTime() external view returns (uint256);

    function nominatedOwner() external view returns (address);

    function owner() external view returns (address);

    function periodFinish() external view returns (uint256);

    function rewardPerToken() external view returns (uint256);

    function rewardPerTokenStored() external view returns (uint256);

    function rewardRate() external view returns (uint256);

    function rewards(address) external view returns (uint256);

    function rewardsDistribution() external view returns (address);

    function rewardsDuration() external view returns (uint256);

    function rewardsToken() external view returns (address);

    function stake(uint256 amount) external;

    function stakingToken() external view returns (address);

    function totalSupply() external view returns (uint256);

    function userRewardPerTokenPaid(address) external view returns (uint256);

    function withdraw(uint256 amount) external;
}
