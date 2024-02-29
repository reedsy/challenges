import express from 'express';
import {createServer} from 'node:http';
import {ROUTER} from './lib/routes/index.js';
import cors from 'cors';

const PORT = 3000;

const app = express();

app.use(cors({
  origin: ['http://localhost:5173'],
}))
app.use('/api/', ROUTER);

const server = createServer(app);
server.listen(PORT, () => {
  console.log(`Server listening at http://localhost:${PORT}`);
});
