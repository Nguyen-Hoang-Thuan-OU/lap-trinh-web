using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace BTH01_MayTinhBoTui.Models
{
    public class BieuThucToanHocModel
    {
        // Bắt buộc phải nhập số thứ nhất
        [Required(ErrorMessage = "Phải nhập một số")]
        public double SoThuNhat { get; set; }

        // Bắt buộc phải nhập số thứ hai
        [Required(ErrorMessage = "Phải nhập một số")]
        public double SoThuHai { get; set; }

        // Kết quả của phép tính
        public double KetQuaTinhToan { get; set; }

        // Các phép tính: cộng, trừ, nhân, chia
        public string PhepTinh { get; set; }

        // Thông báo khi có lỗi xảy ra
        public string ThongBaoLoi { get; set; }

        // Mặc định khởi tạo, gán thông báo bằng rỗng
        // để xử lý lỗi nếu có
        public BieuThucToanHocModel()
        {
            ThongBaoLoi = "";
        }
    }
}