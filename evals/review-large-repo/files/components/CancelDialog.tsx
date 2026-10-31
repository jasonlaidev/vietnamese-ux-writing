export function CancelDialog({ onConfirm }: { onConfirm: () => void }) {
  return (
    <div role="dialog">
      <h2>Bạn có chắc không?</h2>
      <p>Lịch hẹn sẽ bị huỷ.</p>
      <button onClick={onConfirm}>OK</button>
      <button>Thôi</button>
    </div>
  );
}
