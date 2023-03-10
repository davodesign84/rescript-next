@react.component
let default = (~children) => {
  <main>
    <div> {React.string("Zustand wrapper")} </div>
    children
  </main>
}
