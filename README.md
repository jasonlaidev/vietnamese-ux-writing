# vietnamese-ux-writing

Agent skill (Claude Code và các agent đọc được `SKILL.md`) để viết và rà soát chữ tiếng Việt trong giao diện web và app với giọng chuyên nghiệp: không khẩu ngữ, không sáo rỗng kiểu AI, thông báo lỗi đủ ý, xưng hô và chính tả thống nhất.

*An agent skill for professional Vietnamese UX writing and UI copy in web and mobile apps.*

## Dùng cho

- Chữ trong giao diện: nút, nhãn, form, placeholder, thông báo lỗi, màn hình trống, thông báo đẩy.
- Trang giới thiệu sản phẩm hoặc dịch vụ: hero, tính năng, bảng giá, FAQ, metadata SEO.
- Rà soát copy ngay trong mã nguồn (Next.js, Expo/React Native): liệt kê chuỗi tiếng Việt, báo cáo theo bảng `vị trí | hiện tại | đề xuất`, sửa, rồi chạy typecheck, lint và test.

Không dùng cho blog, email, nội dung mạng xã hội, dịch thuật hoặc văn bản pháp lý.

## Nội dung

- Nguyên tắc: văn viết thay lời nói, đúng ý trước trang trọng sau, không hứa tuyệt đối, không nói quá.
- Bảng từ khẩu ngữ cần thay và từ tiếng Anh nên dùng tiếng Việt.
- Mẫu thông báo lỗi: "Không thể … Vui lòng kiểm tra kết nối mạng và thử lại."
- Xưng hô: một cách gọi cho cả dự án.
- Chính tả: một cách đặt dấu thanh (hóa, xóa, khỏe, hủy, tùy), kèm lệnh grep kiểm tra.
- Ngoại lệ cần giữ nguyên và quy trình rà soát.

## Cài đặt

Claude Code, dùng cho mọi dự án:

```bash
git clone https://github.com/jasonlaidev/vietnamese-ux-writing.git
mkdir -p ~/.claude/skills
cp -r vietnamese-ux-writing/skills/vietnamese-ux-writing ~/.claude/skills/
```

Chỉ dùng cho một dự án: chép thư mục `skills/vietnamese-ux-writing` vào `.claude/skills/` của dự án đó.

Skill tự kích hoạt khi bạn viết hoặc sửa copy tiếng Việt, hoặc khi gọi `/vietnamese-ux-writing`.

## Đóng góp

Mở issue hoặc pull request với cặp "câu hiện tại → câu đề xuất" và lý do. Quy tắc mới thêm vào bảng tương ứng trong `SKILL.md`.

## License

[MIT](LICENSE)
