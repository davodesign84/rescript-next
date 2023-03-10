@module("./globals.css") external styles: {.} = "default"

// let metadata = {
//   title: "Create Next App",
//   description: "Generated by create next app",
// }

@react.component
let default = (~children) => {
  <html lang="en">
    <body className="bg-gray-900 text-white">
      <Navbar />
      <main className="p-4"> children </main>
    </body>
  </html>
}