---
name: vietnamese-ux-writing
description: Professional Vietnamese UX writing for web and mobile apps. Use when writing, reviewing or fixing any Vietnamese text a user sees in a product (buttons, labels, forms, placeholders, error and success messages, empty states, confirm dialogs, push notifications, onboarding, paywalls) or on a product website (hero, features, pricing, FAQ, SEO metadata), and when the user asks to "review text", "rà copy", "sửa câu chữ", "còn khẩu ngữ không", "cho chuyên nghiệp hơn" or "nghe như AI viết". Apply it whenever code adds or changes Vietnamese UI strings, even if copy review was not requested. Not for blogs, emails, social media posts, translation or legal documents.
license: MIT
metadata:
  author: jasonlaidev
  version: "1.0.0"
  language: vi
---

# Vietnamese UX Writing

Quy tắc viết và rà soát chữ tiếng Việt trong giao diện web và app, cho sản phẩm cần giọng chuyên nghiệp: không khẩu ngữ, không sáo rỗng kiểu AI, thông báo đủ ý, xưng hô và chính tả thống nhất trong toàn dự án.

## When to Apply

- Thêm hoặc sửa bất kỳ chuỗi tiếng Việt nào người dùng nhìn thấy, kể cả khi không được yêu cầu rà copy.
- Rà soát copy của một màn hình, một trang hoặc cả mã nguồn.
- Viết nội dung trang giới thiệu sản phẩm: hero, tính năng, bảng giá, FAQ, metadata.

Không áp dụng cho blog, email, nội dung mạng xã hội và dịch thuật: các loại này cần giọng và quy tắc khác.

Văn bản pháp lý của sản phẩm (điều khoản sử dụng, chính sách quyền riêng tư) vẫn được rà vì người dùng mở chúng từ app, nhưng chỉ rà chính tả, kiểu đặt dấu, xưng hô và thuật ngữ cho khớp với app. Không viết lại cam kết hay câu chữ pháp lý. Chỗ nội dung có vẻ sai so với cách app hoạt động thì ghi vào báo cáo để chủ sản phẩm quyết định.

## Core Principles

1. **Văn viết, không phải lời nói.** Câu phải đọc được trong tài liệu gửi đối tác. Người dùng đánh giá độ tin cậy của sản phẩm qua từng câu chữ; một câu khẩu ngữ trong thông báo lỗi làm cả app trông thiếu chỉn chu.
2. **Đúng ý trước, trang trọng sau.** Chỉ đổi từ khi ý vẫn đúng. Đổi "Hết hàng" thành "Sản phẩm ngừng kinh doanh" nghe trang trọng hơn nhưng sai ý: hết hàng là tạm thời, ngừng kinh doanh là không bán nữa.
3. **Không hứa tuyệt đối.** Tránh "không giới hạn", "miễn phí vĩnh viễn", "luôn chính xác". Cam kết trên giao diện phải khớp điều khoản và hợp đồng, vì người dùng có thể dùng nó làm căn cứ khiếu nại.
4. **Nói điều sẽ xảy ra, không nói người dùng nên cảm thấy gì.** "Dữ liệu mẫu, không được lưu" thay cho "Yên tâm, đăng nhập lúc nào cũng được nhé". Lời trấn an và từ đệm ("nhé", "đừng lo", "thoải mái") là dấu hiệu dễ nhận ra của văn AI.
5. **Câu đủ ý, cấu trúc song song.** Thông báo lỗi nêu việc gì thất bại và người dùng làm gì tiếp. Câu trả lời FAQ trả lời thẳng câu hỏi, không chỉ dẫn sang trang khác. Các mục trong cùng danh sách hoặc hai cột so sánh dùng cùng cấu trúc ngữ pháp.
6. **Không nói quá.** Không dùng lời khen rỗng ("tuyệt vời", "đột phá", "tối ưu") khi không có số liệu đi kèm.

## Quick Reference

Các lỗi thường gặp nhất. Bảng đầy đủ nằm trong `references/`.

| Sai | Đúng | Vì sao |
|---|---|---|
| Chưa xóa được | Không thể xóa | Thông báo lỗi nêu kết quả, không hẹn "chưa" |
| Kiểm tra mạng rồi thử lại. | Vui lòng kiểm tra kết nối mạng và thử lại. | Câu đầy đủ, lịch sự |
| Không thể xóa | Không thể xóa. Vui lòng thử lại. | Thông báo lỗi luôn kèm bước tiếp theo |
| Nhập giao dịch bằng tay | Nhập giao dịch thủ công | "bằng tay" là khẩu ngữ |
| Trả một lần, dùng mãi | Thanh toán một lần, dùng không thời hạn | "mãi" là khẩu ngữ |
| Đơn chốt rồi không sửa được | Đơn hàng đã xác nhận không thể chỉnh sửa | "chốt" là khẩu ngữ |
| Muốn hủy: vào Cài đặt | Để hủy: vào Cài đặt | "Muốn" là lời nói |
| Chính Sách Quyền Riêng Tư | Chính sách quyền riêng tư | Tiếng Việt chỉ viết hoa chữ đầu câu và tên riêng |
| xoá, huỷ, khoẻ | xóa, hủy, khỏe | Một kiểu đặt dấu cho cả dự án |

## Workflow

### Viết copy mới

1. Xác định loại chuỗi (nút, lỗi, màn hình trống…) và đọc mẫu tương ứng trong `references/microcopy-patterns.md`.
2. Viết theo quy ước có sẵn của dự án: xưng hô, cách gọi người dùng, kiểu đặt dấu. Nếu dự án chưa có quy ước, dùng mặc định trong `references/terminology-and-spelling.md` và ghi lại quy ước đã chọn vào tài liệu của dự án (`CLAUDE.md`, `AGENTS.md` hoặc tương đương) để lần sau dùng lại.
3. Đối chiếu bảng `references/word-replacements.md` trước khi kết thúc.

### Rà soát copy có sẵn

1. **Liệt kê chuỗi tiếng Việt** bằng script, thay vì đọc file thủ công dễ bỏ sót:
   ```bash
   bash scripts/find-vietnamese-strings.sh [thư mục…]
   ```
   Không truyền thư mục thì script quét cả thư mục hiện tại, bỏ qua thư viện, thư mục build, file lock, test và `components/ui/`. Script đọc mã nguồn, template và file dịch của các nền tảng phổ biến: React/Next.js/React Native, Vue, Svelte, Angular, Flutter (`.dart`, `.arb`), iOS (`.swift`, `.strings`), Android (`.kt`, `.java`, `strings.xml`), PHP/Laravel, Python/Django, Ruby, Go, .NET, Rust, Elixir, cùng file i18n `.json`, `.yaml`, `.po`, `.xliff`, `.resx`. Ngôn ngữ khác: thêm đuôi file qua biến `EXTRA_EXT` (`EXTRA_EXT="lua cfm" bash scripts/find-vietnamese-strings.sh`). Output lớn thì ghi ra file rồi đọc hết.

   Khi rà "toàn app", chạy script ở thư mục gốc của dự án, không chỉ thư mục mã nguồn: trang pháp lý, trang tĩnh, mô tả trên cửa hàng ứng dụng và cấu hình hiển thị tên app thường nằm ngoài `src/`.

   Chuỗi nằm ở nơi script không đọc (CMS, cơ sở dữ liệu, file thiết kế) thì cần lấy từ nguồn đó; ghi rõ trong báo cáo phần nào chưa được rà.

   **Không bỏ sót vì output dài.** Không cắt dòng (`cut -c`, `awk substr`, `head`) và không tự loại file lớn khỏi danh sách: chuỗi dài nhất (đoạn giải thích, nội dung mẹo, thông báo) thường là chỗ có nhiều lỗi nhất. Ghi output ra file và đọc hết theo từng đoạn (đọc theo offset/limit). Một dòng mã chứa cả JSX dài thì in nguyên dòng đó từ file gốc. File sinh tự động từ dữ liệu (nội dung mẹo, dữ liệu mẫu) vẫn phải rà, nhưng sửa ở file nguồn và chạy lại bước sinh.
2. **Xác định phần đang hiển thị.** Component bị comment hoặc không được render thì ghi chú là đang ẩn.
3. **Đọc từng dòng**, gồm cả metadata, nhãn trợ năng (`aria-label`, `accessibilityLabel`, `contentDescription`, `semanticsLabel`), placeholder, thông báo lỗi, trạng thái thành công, nội dung thông báo đẩy và dữ liệu demo. Với nội dung giải thích (mẹo, hướng dẫn, FAQ), đối chiếu các con số và ngưỡng giữa các màn hình: cùng một chỉ số mà hai nơi ghi khác nhau thì người dùng không biết tin nơi nào.
4. **Báo cáo** theo định dạng ở mục Output Format. Nếu người dùng chỉ yêu cầu review thì dừng ở bước này, chưa sửa file.
5. **Sửa và kiểm tra:**
   - Chạy lại script tìm chuỗi để chắc chắn không còn từ cũ.
   - Chạy `bash scripts/check-tone-marks.sh [thư mục…]` nếu dự án dùng kiểu đặt dấu mới.
   - Chạy bước kiểm tra sẵn có của dự án (typecheck, lint, test, build). Test có thể so khớp nguyên văn chuỗi; cập nhật kỳ vọng trong test cho khớp với copy mới.
   - Với file dịch (`strings.xml`, `.strings`, `.arb`, `.po`), giữ nguyên key, placeholder (`%s`, `%1$d`, `{name}`) và ký tự cần escape (`\'` trong Android).
   - Xem lại màn hình ở chiều rộng 320 px nếu câu mới dài hơn đáng kể trong nút hoặc bảng.

## Output Format

Khi rà soát, báo cáo theo bảng, mỗi dòng một chuỗi cần sửa:

| Vị trí | Hiện tại | Đề xuất | Lý do |
|---|---|---|---|
| `src/paywall.tsx:129` | Trả một lần, dùng mãi | Thanh toán một lần, dùng không thời hạn | Khẩu ngữ |

Sau bảng, liệt kê ngắn gọn các thay đổi mang tính hệ thống (đổi cách xưng hô, đổi kiểu đặt dấu) và những chỗ cố ý giữ nguyên.

Mở đầu báo cáo bằng phạm vi đã rà: các thư mục đã quét và số dòng đã đọc. "Chưa rà" chỉ dành cho nguồn không đọc được (CMS, cơ sở dữ liệu), không dùng cho file đã có trong output của script.

## Exceptions

Giữ nguyên, không sửa văn phong:

- Lời đánh giá của khách hàng (testimonial, review): giữ giọng của người viết.
- Tên sản phẩm, tên thương hiệu, thuật ngữ ngành.
- Comment, tên biến, slug URL, nội dung chỉ dành cho nhà phát triển.
- Nội dung trích từ nguồn bên ngoài (tiêu đề bài viết, tên tác phẩm, URL) và nội dung biên tập cần giữ giọng tác giả. Với loại này chỉ áp dụng quy ước xưng hô và chính tả.
- Câu đã được chủ sản phẩm duyệt.

## References

Đọc file tương ứng khi cần, không cần đọc hết:

| File | Nội dung | Khi nào đọc |
|---|---|---|
| `references/word-replacements.md` | Bảng từ khẩu ngữ và từ tiếng Anh cần thay | Mọi lần viết hoặc rà copy |
| `references/microcopy-patterns.md` | Mẫu cho nút, lỗi, thành công, màn hình trống, hộp xác nhận, thông báo đẩy, form | Viết chuỗi giao diện mới |
| `references/terminology-and-spelling.md` | Xưng hô, thuật ngữ sản phẩm, cách đặt dấu thanh, viết hoa, số, tiền, ngày giờ | Thiết lập quy ước dự án, sửa chính tả hàng loạt |

## Scripts

| Script | Chức năng |
|---|---|
| `scripts/find-vietnamese-strings.sh` | Liệt kê mọi dòng có chữ tiếng Việt trong mã nguồn, template và file dịch của web, iOS, Android, Flutter |
| `scripts/check-tone-marks.sh` | Tìm chữ đặt dấu kiểu cũ (`xoá`, `huỷ`, `khoẻ`) còn sót |

Cả hai script chỉ dùng cú pháp grep chuẩn POSIX/ERE, chạy được với BSD grep (macOS) và GNU grep (Linux).

## Extending

Khi chủ sản phẩm từ chối một từ hoặc một câu, thêm cặp "sai → đúng" kèm lý do vào file reference phù hợp. Quy ước riêng của một dự án (cách gọi người dùng, tên tính năng) ghi trong tài liệu của dự án đó, không ghi vào skill này. Không đưa tên khách hàng, giá hay nội dung riêng tư vào skill.
