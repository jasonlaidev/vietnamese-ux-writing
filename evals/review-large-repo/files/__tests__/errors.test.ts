import { ERRORS } from '../lib/errors';

test('network error copy', () => {
  expect(ERRORS.network).toBe('Kiểm tra mạng rồi thử lại');
});
