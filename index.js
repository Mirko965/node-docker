const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.send("<h1>Hello Docker</h1>")
})

app.listen(3333, () => console.log('Server listen on port 3333'))
