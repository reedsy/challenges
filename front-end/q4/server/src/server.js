'use strict';

import Hapi from 'hapi';
import Inert from 'inert';

import routes from './routes';

const server = new Hapi.Server({
  port: 3000,
  routes: { cors: true },
});

const startServer = async() => {
  await server.register(Inert);

  routes.forEach((route) => {
    server.route(route);
  });

  try {
    await server.start();
    console.info(`Server started at ${ server.info.uri }`);
  } catch (err) {
    console.error(err);
  }
}

process.on('unhandledRejection', (err) => {
  console.error(err);
  process.exit(1);
});

startServer();
