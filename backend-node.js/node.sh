#// server/index.js
const express = require('express');
const cors = require('cors');
const app = express();
app.use(cors());
app.use(express.json());

app.get('/', (req, res) => res.send('Welcome to Genius EdTech API!'));

app.listen(5000, () => console.log('Server running on port 5000'));

