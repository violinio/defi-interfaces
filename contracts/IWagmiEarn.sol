// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IWagmiEarn {
    function owner() external view returns (address);

    function poolInfo(uint256)
        external
        view
        returns (
            address lpToken,
            uint256 allocPoint,
            uint256 lastRewardBlock,
            uint256 accWagmiPerShare,
            uint256 lpSupply
        );

    function startBlock() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function userInfo(uint256, address)
        external
        view
        returns (
            uint256 amount,
            uint256 rewardDebt,
            uint256 pendingRewards
        );

    function wagmi() external view returns (address);

    function wagmiPerBlock() external view returns (uint256);

    function poolLength() external view returns (uint256);

    function getMultiplier(uint256 _from, uint256 _to)
        external
        pure
        returns (uint256);

    function pendingWagmi(uint256 _pid, address _user)
        external
        view
        returns (uint256);

    function massUpdatePools() external;

    function updatePool(uint256 _pid) external;

    function deposit(
        uint256 _pid,
        uint256 _amount,
        bool _withdrawRewards
    ) external;

    function withdraw(
        uint256 _pid,
        uint256 _amount,
        bool _withdrawRewards
    ) external;

    function emergencyWithdraw(uint256 _pid) external;

    function claim(uint256 _pid) external;
}
