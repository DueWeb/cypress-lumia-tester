const express = require('express')

const app = express();

app.use(express.static('lumiashop'));

app.listen(3000, () => console.log('Listening on hhtp://localhost:3000'));