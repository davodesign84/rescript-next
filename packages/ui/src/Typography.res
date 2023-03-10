module H1 = {
  @react.component
  let make = (~text: string) => {
    <button className="text-4xl font-bold"> {React.string(text)} </button>
  }
}

module H2 = {
  @react.component
  let make = (~text: string) => {
    <button className="text-2xl font-medium"> {React.string(text)} </button>
  }
}

module H3 = {
  @react.component
  let make = (~text: string) => {
    <button className="text-xl"> {React.string(text)} </button>
  }
}
