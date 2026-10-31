# Microcopy Patterns

Mẫu cho từng loại chuỗi giao diện. Mỗi mẫu gồm cấu trúc, ví dụ đúng và lỗi thường gặp.

## Contents

- [Nút và liên kết](#nút-và-liên-kết)
- [Thông báo lỗi](#thông-báo-lỗi)
- [Thông báo thành công](#thông-báo-thành-công)
- [Hộp thoại xác nhận](#hộp-thoại-xác-nhận)
- [Màn hình trống](#màn-hình-trống)
- [Form: nhãn, placeholder, lỗi nhập](#form-nhãn-placeholder-lỗi-nhập)
- [Thông báo đẩy và nhắc nhở](#thông-báo-đẩy-và-nhắc-nhở)
- [Paywall và thanh toán](#paywall-và-thanh-toán)
- [Trang giới thiệu sản phẩm](#trang-giới-thiệu-sản-phẩm)

## Nút và liên kết

Cấu trúc: động từ, thêm đối tượng khi cần phân biệt. Ngắn, không dấu chấm.

| Đúng | Sai | Vì sao |
|---|---|---|
| Lưu | Lưu lại nhé | Từ đệm |
| Thêm bé | Bấm để thêm bé | Nút đã là hành động bấm |
| Khôi phục giao dịch | Khôi phục | Có nhiều thứ có thể khôi phục |
| Xem chi tiết | Click vào đây | Liên kết phải nói rõ đích đến |

## Thông báo lỗi

Cấu trúc: **Không thể + hành động.** + **Vui lòng + việc cần làm.** Không đổ lỗi cho người dùng, không dùng thuật ngữ kỹ thuật.

| Đúng | Sai |
|---|---|
| Không thể lưu. Vui lòng kiểm tra kết nối mạng và thử lại. | Chưa lưu được. Kiểm tra mạng rồi thử lại. |
| Mã mời không đúng hoặc đã hết hạn. Vui lòng yêu cầu người mời gửi mã mới. | Mã sai rồi. Nhờ người mời gửi lại. |
| Đã có lỗi xảy ra. Vui lòng thử lại sau. | Error 500 |

Tiêu đề hộp thoại lỗi chỉ cần phần đầu ("Không thể xóa tài khoản"); phần hướng dẫn đặt ở nội dung.

## Thông báo thành công

Cấu trúc: **Đã + hành động.** Thêm bước tiếp theo nếu có.

| Đúng | Sai |
|---|---|
| Đã lưu | Lưu thành công rồi! |
| Đã gửi mã mời. Người nhận cần đăng nhập để tham gia. | Xong! Bạn đã mời thành công 🎉 |

## Hộp thoại xác nhận

- Tiêu đề là câu hỏi về đúng hành động: "Xóa lần đo này?".
- Nội dung nêu hậu quả cụ thể: "Kết quả ngày 12/10/2026 sẽ bị xóa."
- Nút xác nhận lặp lại động từ của tiêu đề ("Xóa"), nút còn lại là "Hủy". Tránh "Có / Không" và "OK".

## Màn hình trống

Cấu trúc: trạng thái hiện tại + việc người dùng có thể làm + nút hành động.

> **Chưa có bé nào**
> Tạo hồ sơ bé đầu tiên để bắt đầu ghi số đo, thực đơn và lịch khám.
> [Thêm bé]

## Form: nhãn, placeholder, lỗi nhập

- Nhãn là danh từ ngắn: "Ngày sinh", "Chiều cao".
- Placeholder là ví dụ hoặc ghi chú ("Bắt buộc", "Ví dụ: 11,5"), không thay cho nhãn.
- Lỗi nhập nêu khoảng hợp lệ: "Chiều cao cần trong khoảng 40–230 cm." thay cho "Chiều cao không hợp lệ".
- Câu hướng dẫn dùng mệnh lệnh nhẹ: "Nhập ít nhất một chỉ số."

## Thông báo đẩy và nhắc nhở

- Tiêu đề nêu việc cần làm hoặc sự kiện: "Đo chiều cao cho Minh", "Còn 2 ngày dùng thử Premium".
- Nội dung bổ sung thông tin cần thiết để làm việc đó, không lặp lại tiêu đề.
- Không dùng dấu chấm than và emoji để tạo cảm giác gấp gáp.

## Paywall và thanh toán

- Hiển thị rõ tên gói, thời hạn và giá; nếu có dùng thử, ghi số ngày và thời điểm bắt đầu tính phí.
- Ghi rõ cách hủy: "Tự gia hạn, hủy bất cứ lúc nào trong Cài đặt."
- Không gây áp lực mua hàng ("Mua ngay kẻo lỡ"), nhất là với sản phẩm có người dùng là trẻ em.
- Nút chính nêu đúng hành động sẽ xảy ra: "Dùng thử miễn phí 7 ngày", "Đăng ký gói năm".

## Trang giới thiệu sản phẩm

- Tiêu đề nêu lợi ích cụ thể cho người dùng, không tự khen sản phẩm.
- Viết về khách hàng ("doanh nghiệp", "bạn"), hạn chế "chúng tôi".
- Mỗi tính năng: tên ngắn + một câu nêu tác dụng.
- Bảng giá và FAQ dùng câu khớp điều khoản dịch vụ; không hứa tuyệt đối.
- Metadata (title, description) viết như câu giới thiệu, không nhồi từ khóa.
