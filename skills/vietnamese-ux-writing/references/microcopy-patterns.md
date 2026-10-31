# Microcopy Patterns

Mẫu cho từng loại chuỗi giao diện. Mỗi mẫu gồm cấu trúc, ví dụ đúng và lỗi thường gặp. Ví dụ lấy từ nhiều loại app; thay đối tượng cho khớp sản phẩm đang viết.

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
| Thêm vào giỏ hàng | Bấm để thêm vào giỏ | Nút đã là hành động bấm |
| Khôi phục giao dịch | Khôi phục | Có nhiều thứ có thể khôi phục |
| Xem chi tiết | Click vào đây | Liên kết phải nói rõ đích đến |

## Thông báo lỗi

Cấu trúc: **Không thể + hành động.** + **Vui lòng + việc cần làm.** Không đổ lỗi cho người dùng, không dùng thuật ngữ kỹ thuật.

| Đúng | Sai |
|---|---|
| Không thể lưu. Vui lòng kiểm tra kết nối mạng và thử lại. | Chưa lưu được. Kiểm tra mạng rồi thử lại. |
| Mã OTP không đúng hoặc đã hết hạn. Vui lòng yêu cầu gửi mã mới. | Sai mã rồi. Gửi lại đi. |
| Không thể thanh toán. Vui lòng kiểm tra số dư hoặc chọn phương thức khác. | Thanh toán fail |
| Đã có lỗi xảy ra. Vui lòng thử lại sau. | Error 500 |

Tiêu đề hộp thoại lỗi chỉ cần phần đầu ("Không thể xóa tài khoản"); phần hướng dẫn đặt ở nội dung.

Thông báo lỗi đứng một mình (toast, dòng lỗi dưới ô nhập, banner) luôn có đủ hai phần. Khi không có việc cụ thể hơn để làm, phần sau là "Vui lòng thử lại.": "Không thể xóa. Vui lòng thử lại.", không phải "Không thể xóa". Người dùng gặp lỗi cần biết bước tiếp theo; một câu cụt khiến họ không rõ nên thử lại, chờ hay liên hệ hỗ trợ.

## Thông báo thành công

Cấu trúc: **Đã + hành động.** Thêm bước tiếp theo nếu có.

| Đúng | Sai |
|---|---|
| Đã lưu | Lưu thành công rồi! |
| Đã gửi lời mời. Người nhận cần đăng nhập để tham gia. | Xong! Bạn đã mời thành công 🎉 |
| Đã đặt lịch hẹn lúc 09:00, 02/11/2026. | Đặt lịch ok rồi nha |

## Hộp thoại xác nhận

- Tiêu đề là câu hỏi về đúng hành động: "Xóa địa chỉ này?", "Hủy đơn hàng #1024?".
- Nội dung nêu hậu quả cụ thể: "Địa chỉ 'Văn phòng' sẽ bị xóa khỏi sổ địa chỉ."
- Nút xác nhận lặp lại động từ của tiêu đề ("Xóa", "Hủy đơn"), nút còn lại là "Hủy" hoặc "Quay lại" khi tiêu đề đã dùng chữ "Hủy". Tránh "Có / Không" và "OK".

## Màn hình trống

Cấu trúc: trạng thái hiện tại + việc người dùng có thể làm + nút hành động.

> **Chưa có đơn hàng nào**
> Đơn hàng bạn đặt sẽ hiển thị tại đây.
> [Xem sản phẩm]

> **Không tìm thấy kết quả cho "áo khoác"**
> Vui lòng thử từ khóa khác hoặc bỏ bớt bộ lọc.

## Form: nhãn, placeholder, lỗi nhập

- Nhãn là danh từ ngắn: "Họ và tên", "Số điện thoại", "Ngày sinh".
- Placeholder là ví dụ hoặc ghi chú ("Bắt buộc", "Ví dụ: 0912 345 678"), không thay cho nhãn.
- Lỗi nhập nêu yêu cầu đúng: "Mật khẩu cần có ít nhất 8 ký tự." thay cho "Mật khẩu không hợp lệ".
- Câu hướng dẫn dùng mệnh lệnh nhẹ: "Chọn ít nhất một phương thức nhận hàng."

## Thông báo đẩy và nhắc nhở

- Tiêu đề nêu việc cần làm hoặc sự kiện: "Đơn hàng #1024 đang được giao", "Lịch hẹn lúc 09:00 ngày mai", "Còn 2 ngày dùng thử".
- Nội dung bổ sung thông tin cần thiết để làm việc đó, không lặp lại tiêu đề.
- Không dùng dấu chấm than và emoji để tạo cảm giác gấp gáp.

## Paywall và thanh toán

- Hiển thị rõ tên gói, thời hạn và giá; nếu có dùng thử, ghi số ngày và thời điểm bắt đầu tính phí.
- Ghi rõ cách hủy: "Tự gia hạn, hủy bất cứ lúc nào trong Cài đặt."
- Không gây áp lực mua hàng ("Mua ngay kẻo lỡ", đồng hồ đếm ngược giả), nhất là với sản phẩm cho trẻ em, người lớn tuổi hoặc sản phẩm tài chính.
- Nút chính nêu đúng hành động sẽ xảy ra: "Bắt đầu dùng thử", "Thanh toán 1.250.000 đ".

## Trang giới thiệu sản phẩm

- Tiêu đề nêu lợi ích cụ thể cho người dùng, không tự khen sản phẩm.
- Viết về khách hàng ("doanh nghiệp", "bạn"), hạn chế "chúng tôi".
- Mỗi tính năng: tên ngắn + một câu nêu tác dụng.
- Bảng giá và FAQ dùng câu khớp điều khoản dịch vụ; không hứa tuyệt đối.
- Câu trả lời FAQ trả lời thẳng câu hỏi ngay câu đầu, rồi mới dẫn sang trang chính sách nếu cần. Chỉ dẫn link ("Xem Chính sách quyền riêng tư") là né câu hỏi, người đọc FAQ cần câu trả lời ngắn tại chỗ.
- Không bịa cam kết để lấp chỗ trống. Nếu bản gốc có ý hợp lý ("dữ liệu không bị lộ"), giữ phần đó ở mức nói được ("Dữ liệu của bạn chỉ hiển thị với tài khoản được cấp quyền") và ghi trong báo cáo những câu cần chủ sản phẩm xác nhận trước khi đăng.
- Metadata (title, description) viết như câu giới thiệu, không nhồi từ khóa.
