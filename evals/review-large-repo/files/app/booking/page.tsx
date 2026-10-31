import { TimeSlotPicker } from '@/components/TimeSlotPicker';
import { BookingSummary } from '@/components/BookingSummary';

export default function BookingPage() {
  return (
    <main>
      <h1>Chọn Thời Gian</h1>
      <TimeSlotPicker />
      <BookingSummary />
    </main>
  );
}
