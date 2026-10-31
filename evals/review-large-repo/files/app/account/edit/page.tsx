export default function EditProfilePage() {
  return (
    <form>
      <label htmlFor="name">Họ và tên</label>
      <input id="name" />
      <label htmlFor="email">Email</label>
      <input id="email" placeholder="Ví dụ: ten@email.com" />
      <button type="submit">Lưu</button>
    </form>
  );
}
