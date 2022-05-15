import { ethers, waffle } from 'hardhat';

const helper = async (victim: any) => {
    const provider = ethers.provider;
    const balance = await provider.getStorageAt(victim.address, 1);
    console.log(balance);
};

export default helper;
