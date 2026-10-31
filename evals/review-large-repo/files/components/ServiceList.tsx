const SERVICES = [
  { id: 'massage', name: 'Massage body 60 phút' },
  { id: 'nail', name: 'Sơn gel' },
];

export function ServiceList() {
  return (
    <ul>
      {SERVICES.map((s) => (
        <li key={s.id}>{s.name}</li>
      ))}
    </ul>
  );
}
