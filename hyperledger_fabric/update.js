'use strict';

const { WorkloadModuleBase } = require('@hyperledger/caliper-core');

const owners = ['Alice', 'Bob', 'Claire', 'David'];

/**
 * Workload module for the benchmark round.
 */
class TransactionWorkload extends WorkloadModuleBase {
    /**
     * Initializes the workload module instance.
     */
    constructor() {
        super();
        this.txIndex = 0;
    }

    /**
     * Assemble TXs for the round.
     * @return {Promise<TxStatus[]>}
     */
    async submitTransaction() {
        this.txIndex++;
        let marbleName = this.txIndex;
        let newOwner = owners[(this.txIndex + 1) % owners.length];

        const args = {
            contractId: 'marbles',
            contractVersion: 'v1',
            contractFunction: 'transferMarble',
            contractArguments: [marbleName.toString(), newOwner.toString()],
            timeout: 30
        };

        await this.sutAdapter.sendRequests(args);
    }
}

/**
 * Create a new instance of the workload module.
 * @return {WorkloadModuleInterface}
 */
function createWorkloadModule() {
    return new TransactionWorkload();
}

module.exports.createWorkloadModule = createWorkloadModule;