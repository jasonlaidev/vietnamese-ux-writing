export function validatePhone(v: string) {
  if (!/^0\d{9}$/.test(v)) return 'Số điện thoại không hợp lệ';
  return null;
}

export function validateName(v: string) {
  if (v.trim().length === 0) return 'Vui lòng nhập họ và tên.';
  return null;
}
