// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    struct Voter {
        bool voted;
        uint vote;
    }

    struct Proposal {
        string name;
        uint voteCount;
    }

    address public admin;
    mapping(address => Voter) public voters;
    Proposal[] public proposals;

    constructor(string[] memory proposalNames) {
        admin = msg.sender;
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(Proposal({
                name: proposalNames[i],
                voteCount: 0
            }));
        }
    }

    function vote(uint proposalIndex) public {
        Voter storage sender = voters[msg.sender];
        require(!sender.voted, "Ya has votado");
        sender.voted = true;
        sender.vote = proposalIndex;
        proposals[proposalIndex].voteCount += 1;
    }

    function winningProposal() public view returns (uint) {
        uint winningVoteCount = 0;
        uint winningProposalIndex = 0;
        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > winningVoteCount) {
                winningVoteCount = proposals[i].voteCount;
                winningProposalIndex = i;
            }
        }
        return winningProposalIndex;
    }

    function winnerName() public view returns (string memory) {
        return proposals[winningProposal()].name;
    }

    // Nueva función para obtener la cantidad de propuestas
    function getProposalsCount() public view returns (uint) {
        return proposals.length;
    }
}