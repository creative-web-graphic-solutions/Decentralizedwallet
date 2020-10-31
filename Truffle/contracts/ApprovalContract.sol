pragma solidity >=0.4.22 <0.8.0;

contract ApprovalContract{	
	address public sender;
	address payable receiver;
	address public constant approver = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
    uint money;

	constructor() public payable {
        sender = msg.sender;
        money = msg.value;
  }

	function deposit(address _receiver) external payable {
		require(msg.value > 0)	;
		sender = msg.sender;		
	}

	function viewApprover() external pure returns(address) {
		return(approver);
	}

	function approve() external {
    require(msg.sender == approver);
    receiver.transfer(address(this).balance);
  }
}