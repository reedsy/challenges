'use strict';

import path from 'path';

const IMAGES_PATH_PREFIX = path.resolve(__dirname, '../../../images');

function getImage(request, h) {
  return h.file(`${ IMAGES_PATH_PREFIX }/${ request.params.file }`);
}

export default {
  getImage: getImage,
};
