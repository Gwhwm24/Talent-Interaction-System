// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TalentInteraction {
    // Struct to represent a talent
    struct Talent {
        bytes32 hash; // Hash of the talent data (e.g., sound, voice, picture, motion)
        bool exists;  // Whether this talent has already been added
    }

    // Mapping to store talents by their hash
    mapping(bytes32 => Talent) public talents;

    // Event emitted when a new talent is added
    event TalentAdded(bytes32 indexed talentHash);

    // Event emitted when a duplicate talent is attempted to be added
    event DuplicateTalentAttempted(bytes32 indexed talentHash);

    // Function to add a new talent
    function addTalent(bytes32 talentHash) public {
        // Check if the talent hash already exists
        if (talents[talentHash].exists) {
            emit DuplicateTalentAttempted(talentHash);
            revert("Talent already exists");
        }

        // Store the new talent
        talents[talentHash] = Talent({
            hash: talentHash,
            exists: true
        });

        // Emit an event for the new talent addition
        emit TalentAdded(talentHash);
    }

    // Function to check if a talent exists
    function isTalentExists(bytes32 talentHash) public view returns (bool) {
        return talents[talentHash].exists;
    }
}

