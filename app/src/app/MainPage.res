@react.component
let default = () => {
  <main>
    <div className="flex flex-col items-start mb-4">
      <Typography.H1 text="Headline" />
      <Typography.H2 text="Subtitle" />
      <Typography.H3 text="Paragraph title" />
    </div>
    <div> {React.string("Homepage content")} </div>
    <ClientComponent />
  </main>
}
