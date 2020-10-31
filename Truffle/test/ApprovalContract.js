const ApprovalContract = artifacts.require('../../contracts/ApprovalContract.sol');

contract('ApprovalContract', function(accounts){
    it ('initiates contract', async function(){
        const contract = await ApprovalContract.deployed();
        const approver = await contract.approver.call();
        assert.equal(approver, '0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678', "approver's don't match")
    });
    
});
