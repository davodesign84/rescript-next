@react.component
let make = (~onClick, ~text: string) => {
  <button onClick className="px-4 py-2 bg-teal-600 hover:bg-teal-800 rounded-sm">
    {React.string(text)}
  </button>
}
