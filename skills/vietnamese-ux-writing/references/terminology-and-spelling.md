# Terminology and Spelling

Quy ước cần thống nhất trong toàn dự án. Chọn một lần, ghi vào tài liệu của dự án, rồi áp dụng cho mọi chuỗi: giao diện, email giao dịch, thông báo đẩy, nội dung tự sinh, dữ liệu mẫu.

## Contents

- [Xưng hô](#xưng-hô)
- [Thuật ngữ sản phẩm](#thuật-ngữ-sản-phẩm)
- [Đặt dấu thanh](#đặt-dấu-thanh)
- [Viết hoa](#viết-hoa)
- [Số, tiền, đơn vị, ngày giờ](#số-tiền-đơn-vị-ngày-giờ)

## Xưng hô

**Gọi người dùng:** mặc định là "bạn". Tránh "mình", "các bạn" (giao diện nói với một người). "Quý khách" chỉ hợp với ngân hàng, bảo hiểm, hàng không; nếu dùng thì dùng ở mọi màn hình.

**App tự xưng:** "chúng tôi" hoặc tên sản phẩm, chọn một. Hạn chế tự xưng trong giao diện; câu thường không cần chủ ngữ ("Đã gửi mã xác thực" thay cho "Chúng tôi đã gửi mã xác thực cho bạn").

**Gọi các vai trò khác:** mỗi vai trò một từ, dùng ở mọi nơi kể cả nhãn ô nhập và công thức. Ví dụ: "người bán" hoặc "nhà bán hàng"; "học viên" hoặc "học sinh"; "người bệnh" hoặc "bệnh nhân"; "ba mẹ", "bố mẹ" hoặc "cha mẹ". Dùng lẫn lộn làm sản phẩm trông như ghép từ nhiều nguồn.

Đọc lại từ đã chọn trong ngữ cảnh để tránh hiểu nhầm. Ví dụ, app gọi phụ huynh là "ba" thì "Ba kết quả gần nhau" có thể bị đọc thành "kết quả của ba"; viết "Cả ba kết quả gần nhau".

## Thuật ngữ sản phẩm

Một khái niệm, một tên. Nếu màn hình này gọi "đơn hàng" thì màn hình khác không gọi "đơn mua" hay "order"; "số dư" không đổi thành "tiền trong ví"; "lịch hẹn" không đổi thành "lịch đặt". Khi đặt tên tính năng mới, kiểm tra tên đó chưa được dùng cho thứ khác.

Động từ thao tác cũng là thuật ngữ: app điện thoại chọn "Chạm" (hoặc "Nhấn") và dùng ở mọi hướng dẫn, nhãn trợ năng; không trộn với "Bấm". Tương tự với "máy" và "thiết bị", "app" và tên sản phẩm khi app tự xưng. Văn bản pháp lý, mẹo và nội dung trợ giúp dùng cùng bộ thuật ngữ và cùng cách gọi vai trò ("ba mẹ" hay "cha mẹ") với giao diện.

Trạng thái (đơn hàng, thanh toán, hồ sơ) dùng cùng một dạng ngữ pháp: "Chờ xác nhận", "Đang giao", "Đã giao", "Đã hủy". Không trộn "Chờ xác nhận" với "Shipping" hay "Giao thành công".

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
- Tên tính năng là tên riêng của sản phẩm thì giữ đúng cách viết đã đặt ("Ví Trả sau", "Premium").

## Số, tiền, đơn vị, ngày giờ

- Dấu thập phân là dấu phẩy: "4,5 sao", "1,5 kg". Phân cách hàng nghìn bằng dấu chấm: "1.250.000".
- Tiền: chọn một ký hiệu ("đ", "₫" hoặc "VND") và một vị trí, dùng ở mọi nơi: "1.250.000 đ". Không viết tắt "1tr2", "250k" trong giao diện.
- Khoảng giá trị dùng gạch ngang (en dash) không cách: "8–12 ký tự", "2–3 ngày làm việc".
- Có khoảng trắng giữa số và đơn vị: "500 ml", "2 GB", "30 phút". Với "%", chọn một kiểu ("70%" hoặc "70 %") và dùng nhất quán.
- Ngày theo thứ tự ngày/tháng/năm: "31/10/2026". Giờ theo 24 giờ: "21:00".
- Thứ trong tuần viết "Thứ 2"… "Chủ nhật" hoặc "Thứ hai"… nhất quán trong toàn app.
- Số điện thoại hiển thị theo nhóm: "0912 345 678".
