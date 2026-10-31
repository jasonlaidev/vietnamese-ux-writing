# Terminology and Spelling

Quy ước cần thống nhất trong toàn dự án. Chọn một lần, ghi vào tài liệu của dự án, rồi áp dụng cho mọi chuỗi: giao diện, nội dung tự sinh, thông báo đẩy, dữ liệu mẫu.

## Contents

- [Xưng hô](#xưng-hô)
- [Đặt dấu thanh](#đặt-dấu-thanh)
- [Viết hoa](#viết-hoa)
- [Số, đơn vị, ngày giờ](#số-đơn-vị-ngày-giờ)

## Xưng hô

**Gọi người dùng:** mặc định là "bạn". Tránh "mình", "quý khách" (quá trang trọng trong app), "các bạn" (giao diện nói với một người).

**Gọi phụ huynh** (app gia đình, giáo dục, sức khỏe trẻ em): chọn một trong "ba mẹ", "bố mẹ", "cha mẹ" và dùng ở mọi nơi, kể cả công thức ("(ba + mẹ + 13) ÷ 2") và nhãn ô nhập. Dùng lẫn lộn làm sản phẩm trông như ghép từ nhiều nguồn.

Nếu chọn "ba", tránh câu mở đầu bằng "Ba + danh từ" để chỉ số ba: "Ba số gần nhau" bị đọc thành "số của ba". Viết "Cả ba kết quả gần nhau".

**Gọi trẻ:** "bé" hoặc "con", chọn theo ngữ cảnh và dùng nhất quán trong cùng màn hình.

## Đặt dấu thanh

Chọn một kiểu cho toàn dự án. Mặc định đề xuất kiểu mới (theo cách đặt dấu phổ biến trên bàn phím và trong văn bản hành chính hiện nay):

| Kiểu cũ | Kiểu mới |
|---|---|
| hoá, xoá, hoạ, khoá | hóa, xóa, họa, khóa |
| tuỳ, huỷ, thuỷ | tùy, hủy, thủy |
| khoẻ, thoả | khỏe, thỏa |

**Quy tắc:** với vần oa, oe, uy **không có phụ âm cuối**, đặt dấu lên chữ cái đầu của vần. Không áp dụng khi:

- vần có phụ âm cuối: "hoàn", "toán", "khoảng", "thuyền" giữ nguyên;
- đứng sau "q", vì "qu" là phụ âm: "quý", "quỳ" giữ nguyên.

Kiểm tra phần còn sót bằng `scripts/check-tone-marks.sh`.

## Viết hoa

- Tiêu đề, nút, nhãn, mục menu: chỉ viết hoa chữ đầu và tên riêng. "Chính sách quyền riêng tư", không phải "Chính Sách Quyền Riêng Tư".
- Tiêu đề nhóm viết in hoa toàn bộ (kiểu iOS Settings) là lựa chọn thiết kế, không phải quy tắc chính tả; nếu dùng thì dùng nhất quán.
- Tên tab, tên tính năng là tên riêng của sản phẩm thì giữ đúng cách viết đã đặt ("Khám định kỳ", "Premium").

## Số, đơn vị, ngày giờ

- Dấu thập phân là dấu phẩy: "8,5 cm", "11,5 tuổi". Phân cách hàng nghìn bằng dấu chấm: "399.000 đ".
- Khoảng giá trị dùng gạch ngang (en dash) không cách: "40–230 cm", "9–14 tuổi".
- Có khoảng trắng giữa số và đơn vị: "120 ml", "7 cm/năm". Với "%", chọn một kiểu ("70%" hoặc "70 %") và dùng nhất quán.
- Ngày theo thứ tự ngày/tháng/năm: "31/10/2026". Giờ theo 24 giờ: "21:00".
- Thứ trong tuần viết "Thứ 2"… "Chủ nhật" hoặc "Thứ hai"… nhất quán trong toàn app.
