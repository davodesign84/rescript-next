@react.component
let default = (~children) => {
  <main>
    {React.string("Wasm wrapper")}
    children
  </main>
}
