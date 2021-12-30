// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IPancakeSwapReferralMC {

    function deposit(uint256 _pid, uint256 _amount, address referral) external;

    function emergencyWithdraw(uint256 _pid) external;

    function massUpdatePools() external;

    function owner() external view returns (address);

    function poolInfo(uint256)
        external
        view
        returns (
            address lpToken,
            uint256 allocPoint,
            uint256 lastRewardBlock,
            uint256 accCakePerShare
        );

    function poolLength() external view returns (uint256);

    function startBlock() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function updatePool(uint256 _pid) external;

    function userInfo(uint256, address)
        external
        view
        returns (uint256 amount, uint256 rewardDebt);

    function withdraw(uint256 _pid, uint256 _amount) external;
}
