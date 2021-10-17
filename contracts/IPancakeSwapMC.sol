// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IPancakeSwapMC {
    function BONUS_MULTIPLIER() external view returns (uint256);

    function deposit(uint256 _pid, uint256 _amount) external;

    function devaddr() external view returns (address);

    function emergencyWithdraw(uint256 _pid) external;

    function enterStaking(uint256 _amount) external;

    function getMultiplier(uint256 _from, uint256 _to)
        external
        view
        returns (uint256);

    function leaveStaking(uint256 _amount) external;

    function massUpdatePools() external;

    function migrate(uint256 _pid) external;

    function migrator() external view returns (address);

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

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate
    ) external;

    function startBlock() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function updatePool(uint256 _pid) external;

    function userInfo(uint256, address)
        external
        view
        returns (uint256 amount, uint256 rewardDebt);

    function withdraw(uint256 _pid, uint256 _amount) external;
}
