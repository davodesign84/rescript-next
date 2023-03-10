module PublicKey = {
  type t
  @new @module("@solana/web3.js")
  external makePKey: string => t = "PublicKey"
  @send external toBase58: t => string = "toBase58"
  // TODO: complete type
}

module WalletAdapter = {
  module Wallet = {
    type adapter = {name: string}
    type t = {adapter: adapter}
    // TODO: complete type
  }

  @module("@solana/wallet-adapter-react") @react.component
  external make: (
    ~wallets: array<Wallet.t>,
    ~autoConnect: bool,
    ~localStorageKey: string,
    ~children: React.element,
  ) => React.element = "WalletProvider"

  module WalletContext = {
    type t = {
      connected: bool,
      connecting: bool,
      autoConnect: bool,
      wallets: array<Wallet.t>,
      wallet: Js.nullable<Wallet.t>,
      publicKey: Js.nullable<PublicKey.t>,
      disconnecting: bool,
      connect: unit => unit,
      disconnect: unit => unit,
      select: string => unit,
      // sendTransaction: WalletAdapterProps['sendTransaction'];
      // signTransaction: SignerWalletAdapterProps['signTransaction'] | undefined;
      // signAllTransactions: SignerWalletAdapterProps['signAllTransactions'] | undefined;
      // signMessage: MessageSignerWalletAdapterProps['signMessage'] | undefined;
    }
  }

  @module("@solana/wallet-adapter-react")
  external useWallet: unit => WalletContext.t = "useWallet"
}
