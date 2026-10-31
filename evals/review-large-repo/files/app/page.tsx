import { ServiceList } from '@/components/ServiceList';

export default function HomePage() {
  return (
    <main>
      <h1>Đặt lịch làm đẹp</h1>
      <p>Chọn dịch vụ, chọn giờ và thanh toán ngay trên ứng dụng.</p>
      <ServiceList />
    </main>
  );
}
