const TestToken = artifacts.require("TestToken");

contract('TestToken', (accounts) => {

    it('total supply', async () => {
        const instance = await TestToken.deployed()
        const totalSupply = await instance.totalSupply();
        assert.equal(totalSupply, 1000, 'total supply is right');
    });

});