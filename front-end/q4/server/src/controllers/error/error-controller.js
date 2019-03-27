'use strict';

import Boom from 'boom';

function notFound() {
  throw Boom.notFound();
}

export default {
  notFound: notFound,
};
