export function reminderPush(name: string, time: string) {
  return {
    title: 'Đừng quên lịch hẹn nha!!!',
    body: `${name} ơi, ${time} mai có hẹn đó, nhớ đến đúng giờ nhé 😘`,
  };
}
