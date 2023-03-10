%%raw("'use client'")

module Link = Next.Link
module Navigation = Next.Navigation

let baseClass = "px-4 py-2 hover:text-teal-300"

let getClass = (currentRoute: string, linkRoute: string) =>
  switch currentRoute == linkRoute {
  | true => j`$baseClass underline text-teal-200`
  | _ => baseClass
  }

@react.component
let make = () => {
  let path = Navigation.usePathname()

  <nav className="flex bg-gray-800">
    <Link className={getClass(path, "/")} href="/"> {React.string("Home")} </Link>
    <Link className={getClass(path, "/zustand")} href="/zustand"> {React.string("Zustand")} </Link>
    <Link className={getClass(path, "/solana")} href="/solana"> {React.string("Solana")} </Link>
    <Link className={getClass(path, "/wasm")} href="/wasm"> {React.string("Wasm")} </Link>
  </nav>
}
