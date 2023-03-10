%%raw("'use client'")

@react.component
let default = () => {
  let walletCtx = Solana.WalletAdapter.useWallet()

  let pk = switch Js.Nullable.toOption(walletCtx.publicKey) {
  | Some(key) => Solana.PublicKey.toBase58(key)
  | None => "null"
  }

  let handleClick = _ => {
    if walletCtx.connected {
      walletCtx.disconnect()
    } else {
      walletCtx.select(walletCtx.wallets[0].adapter.name)
      // walletCtx.connect()
    }
  }

  React.useEffect(() => {
    Js.Console.log(walletCtx)
    None
  })

  <section className="p-4 flex flex-col items-start">
    <div> {React.string("Solana Page content")} </div>
    <Button
      text={if walletCtx.connected {
        "Disconnect"
      } else {
        "Connect"
      }}
      onClick={handleClick}
    />
    <code> {React.string(pk)} </code>
  </section>
}
