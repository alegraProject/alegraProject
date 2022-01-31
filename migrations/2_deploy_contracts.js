const TodoList = artifacts.require("./TodoList.sol");

module.exports = function(deployer) {
  deployer.deploy(TodoList);
};

//The state of the database changes from adding content to it.  deploying a contract changes the state of it.  A migration is needed to chan ge the state.
