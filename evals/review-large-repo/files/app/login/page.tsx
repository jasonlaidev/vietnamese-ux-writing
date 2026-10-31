export default function LoginPage() {
  return (
    <form>
      <h1>Đăng nhập</h1>
      <label htmlFor="phone">Số điện thoại</label>
      <input id="phone" placeholder="Nhập sđt vào đây" />
      <button type="submit">Gửi mã OTP</button>
    </form>
  );
}
