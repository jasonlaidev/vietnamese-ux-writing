export function EmptyState({ title, body, action }: { title: string; body: string; action: string }) {
  return (
    <div>
      <h2>{title}</h2>
      <p>{body}</p>
      <button>{action}</button>
    </div>
  );
}
