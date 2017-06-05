/* eslint-disable import/prefer-default-export */

import { HELLO_WORLD_NAME_UPDATE } from '../../constants/debts/show';

export const updateName = (text) => ({
  type: HELLO_WORLD_NAME_UPDATE,
  text,
});
