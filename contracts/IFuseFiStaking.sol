// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
interface IFuseFiMultiRewards {
  function acceptOwnership (  ) external;
  function addReward ( address _rewardsToken, address _rewardsDistributor, uint256 _rewardsDuration ) external;
  function balanceOf ( address account ) external view returns ( uint256 );
  function earned ( address account, address _rewardsToken ) external view returns ( uint256 );
  function exit (  ) external;
  function getReward (  ) external;
  function getRewardForDuration ( address _rewardsToken ) external view returns ( uint256 );
  function lastPauseTime (  ) external view returns ( uint256 );
  function lastTimeRewardApplicable ( address _rewardsToken ) external view returns ( uint256 );
  function nominateNewOwner ( address _owner ) external;
  function nominatedOwner (  ) external view returns ( address );
  function notifyRewardAmount ( address _rewardsToken, uint256 reward ) external;
  function owner (  ) external view returns ( address );
  function paused (  ) external view returns ( bool );
  function recoverERC20 ( address tokenAddress, uint256 tokenAmount ) external;
  function rewardData ( address ) external view returns ( address rewardsDistributor, uint256 rewardsDuration, uint256 periodFinish, uint256 rewardRate, uint256 lastUpdateTime, uint256 rewardPerTokenStored );
  function rewardPerToken ( address _rewardsToken ) external view returns ( uint256 );
  function rewardTokens ( uint256 ) external view returns ( address );
  function rewards ( address, address ) external view returns ( uint256 );
  function setPaused ( bool _paused ) external;
  function setRewardsDistributor ( address _rewardsToken, address _rewardsDistributor ) external;
  function setRewardsDuration ( address _rewardsToken, uint256 _rewardsDuration ) external;
  function stake ( uint256 amount ) external;
  function stakingToken (  ) external view returns ( address );
  function totalSupply (  ) external view returns ( uint256 );
  function userRewardPerTokenPaid ( address, address ) external view returns ( uint256 );
  function withdraw ( uint256 amount ) external;
}
