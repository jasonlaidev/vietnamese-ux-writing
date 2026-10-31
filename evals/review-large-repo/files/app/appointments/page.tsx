import { AppointmentCard } from '@/components/AppointmentCard';
import { EmptyState } from '@/components/EmptyState';

export default function AppointmentsPage({ items }: { items: { id: string }[] }) {
  if (items.length === 0) {
    return <EmptyState title="Trống trơn à" body="Bạn chưa book lịch nào cả, book ngay cho xịn nha!" action="Đặt lịch" />;
  }
  return <ul>{items.map((i) => <AppointmentCard key={i.id} id={i.id} />)}</ul>;
}
