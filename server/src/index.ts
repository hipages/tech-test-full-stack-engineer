import * as express from 'express';

const server = express();
const port = 8080;

server.listen(port, () => {
    console.log(`Server is listening at http://localhost:${port}`);
});
