const VotingSystem = artifacts.require('VotingSystem');

module.exports = function (deployer) {
  const proposalNames = ['Propuesta 1', 'Propuesta 2', 'Propuesta 3'];
  deployer.deploy(VotingSystem, proposalNames);
};