// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IThorusMasterchef {
    function claim(uint256 _pid) external;

    function deposit(
        uint256 _pid,
        uint256 _amount,
        bool _withdrawRewards
    ) external;

    function emergencyWithdraw(uint256 _pid) external;

    function getMultiplier(uint256 _from, uint256 _to)
        external
        pure
        returns (uint256);

    function massUpdatePools() external;

    function owner() external view returns (address);

    function pendingThorus(uint256 _pid, address _user)
        external
        view
        returns (uint256);

    function poolInfo(uint256)
        external
        view
        returns (
            address lpToken,
            uint256 allocPoint,
            uint256 lastRewardSecond,
            uint256 accThorusPerShare,
            uint256 lpSupply
        );

    function poolLength() external view returns (uint256);

    function startSecond() external view returns (uint256);

    function thorus() external view returns (address);

    function thorusPerSecond() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function updatePool(uint256 _pid) external;

    function userInfo(uint256, address)
        external
        view
        returns (
            uint256 amount,
            uint256 rewardDebt,
            uint256 pendingRewards
        );

    function withdraw(
        uint256 _pid,
        uint256 _amount,
        bool _withdrawRewards
    ) external;
}
