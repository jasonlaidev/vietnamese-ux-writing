export function formatPrice(v: number) {
  return `${Math.round(v / 1000)}k`;
}

export function formatDuration(min: number) {
  return `${min} phút`;
}
