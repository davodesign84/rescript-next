%%raw("'use client'")

@react.component
let default = (~children) => {
  <main>
    <Solana.WalletAdapter autoConnect={true} wallets={[]} localStorageKey="solana-wallet">
      {React.string("Solana wrapper")}
      children
    </Solana.WalletAdapter>
  </main>
}
