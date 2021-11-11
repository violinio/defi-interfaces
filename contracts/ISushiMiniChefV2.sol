// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISushiMiniChefV2 {

    function deposit(
        uint256 pid,
        uint256 amount,
        address to
    ) external;

    function emergencyWithdraw(uint256 pid, address to) external;

    function harvest(uint256 pid, address to) external;

    function lpToken(uint256 pid) external view returns (address);

    function migrator() external view returns (address);

    function owner() external view returns (address);

    function permitToken(
        address token,
        address from,
        address to,
        uint256 amount,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    function poolInfo(uint256)
        external
        view
        returns (
            uint128 accSushiPerShare,
            uint64 lastRewardTime,
            uint64 allocPoint
        );

    function poolLength() external view returns (uint256 pools);

    function rewarder(uint256) external view returns (address);

    function totalAllocPoint() external view returns (uint256);

    function userInfo(uint256, address)
        external
        view
        returns (uint256 amount, int256 rewardDebt);

    function withdraw(
        uint256 pid,
        uint256 amount,
        address to
    ) external;

    function withdrawAndHarvest(
        uint256 pid,
        uint256 amount,
        address to
    ) external;
}
