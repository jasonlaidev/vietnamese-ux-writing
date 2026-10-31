import { toast } from 'sonner';

export const notify = {
  saved: () => toast.success('Lưu thành công rồi! 🎉'),
  cancelled: () => toast.success('Đã hủy lịch hẹn'),
  copied: () => toast('Đã sao chép mã đặt lịch'),
};
