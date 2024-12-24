module CloudImageApp::ImageNFT {
    struct ImageToken has key {
        id: UID,
        hash: vector<u8>,
        metadata: String,
    }

    public fun mint_image_token(
        hash: vector<u8>,
        metadata: String,
        ctx: &mut TxContext
    ): ImageToken {
        ImageToken {
            id: object::new(ctx),
            hash,
            metadata,
        }
    }
}

