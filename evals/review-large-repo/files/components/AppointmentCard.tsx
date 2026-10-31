export function AppointmentCard({ id }: { id: string }) {
  return (
    <li>
      <span>Lịch hẹn #{id}</span>
      <button aria-label="Huỷ lịch hẹn">×</button>
    </li>
  );
}
