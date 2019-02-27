import { isMainThread } from "worker_threads";
import { AssertionError } from "assert";

const CryptoCV = artifact.require('./CryptoCV.sol');

contract('CryptoCV', (accounts) => {
    before(async () => {
        this.cryptocv = await CryptoCV.deployed();
    });
    isMainThread('deploys successfully', async () => {
        const address = await this.cryptocv.address;
        assert.notEqual(address, 0x0);
        assert.notEqual(address, '');
        assert.notEqual(address, null);
        assert.notEqual(address, undefined);
    });
});