module MyModule::DrugDevelopmentTracking {

    use aptos_framework::signer;

    /// Struct to store drug development information.
    struct Drug has store, key {
        name: vector<u8>,        // Drug name
        stage: vector<u8>,       // Current stage (e.g., "Preclinical", "Phase 1", etc.)
    }

    /// Function to start tracking a new drug.
    public fun start_tracking(owner: &signer, name: vector<u8>, initial_stage: vector<u8>) {
        let drug = Drug {
            name,
            stage: initial_stage,
        };
        move_to(owner, drug);
    }

    /// Function to update the drug's current stage in development.
    public fun update_stage(owner: &signer, new_stage: vector<u8>) acquires Drug {
        let drug = borrow_global_mut<Drug>(signer::address_of(owner));
        drug.stage = new_stage;
    }
}
