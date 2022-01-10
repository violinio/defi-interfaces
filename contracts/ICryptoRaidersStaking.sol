// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ICryptoRaidersStaking {
    function addressStakedBalance(address _address)
        external
        view
        returns (uint256);

    function bigMultiplier() external view returns (uint256);

    function createStake(uint256 _amount) external;

    function dailyEmissionsRate() external view returns (uint256);

    function emergencyUnstake(uint256 _amount) external;

    function getRewards() external;

    function isStaker(address _address) external view returns (bool);

    function lastRewardTime() external view returns (uint256);

    function owner() external view returns (address);

    function paused() external view returns (bool);

    function removeStake(uint256 _amount) external;

    function rewardsBalance() external view returns (uint256);

    function showBigRewardsPerToken() external view returns (uint256);

    function showBigUserRewardsCollected() external view returns (uint256);

    function showRewardToken() external view returns (address);

    function showStakingToken() external view returns (address);

    function timeSinceLastReward() external view returns (uint256);

    function totalStakedSupply() external view returns (uint256);

    function updateBigRewardsPerToken() external;

    function userPendingRewards(address _address)
        external
        view
        returns (uint256);
}
