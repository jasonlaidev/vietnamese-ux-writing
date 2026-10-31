export const metadata = {
  title: 'Spa Booking - Đặt Lịch Spa Siêu Nhanh Siêu Tiện',
  description: 'Đặt lịch spa, massage, nail. Spa giá rẻ, spa gần đây, đặt spa online, spa uy tín',
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="vi">
      <body>{children}</body>
    </html>
  );
}
