%%raw("'use client'")

@react.component
let default = () => {
  let handleClick = () => {
    Wasm.greet()
  }
  <main>
    <div> {React.string("Wasm Page")} </div>
    <div>
      <Button onClick={_ => handleClick()} text="click me" />
    </div>
  </main>
}
