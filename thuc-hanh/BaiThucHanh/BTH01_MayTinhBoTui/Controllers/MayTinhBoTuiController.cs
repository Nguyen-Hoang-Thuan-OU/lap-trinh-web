using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTH01_MayTinhBoTui.Models;

namespace BTH01_MayTinhBoTui.Controllers
{
    public class MayTinhBoTuiController : Controller
    {
        // Mặc định là phương thức GET
        public ActionResult MayTinh(BieuThucToanHocModel bieuThuc)
        {
            return View(bieuThuc);
        }

        // Khi bên View bấm nút Submit thì sẽ gửi phương thức POST lên Controller,
        // cần tạo ra action để xử lý phương thức POST
        [HttpPost]

        /*
         * 01. Nhận dữ liệu từ bên View
         * 02. Tính toán lại dựa trên các số nhận được
         * 03. Trả kết quả lại cho View thông qua phương thức GET
         */
        public ActionResult MayTinh(BieuThucToanHocModel bieuThuc,
                                                string phepTinh)
        {
            // Đầu tiên, kiểm tra nếu dữ liệu hợp lệ
            // mới tiến hành chạy câu điều kiện switch
            if (ModelState.IsValid)
            {
                switch (phepTinh)
                {
                    // Khi phepTinh bên View bấm là "+"
                    case "+":
                        {
                            bieuThuc.KetQuaTinhToan =
                                bieuThuc.SoThuNhat + bieuThuc.SoThuHai;
                            break;
                        }

                    // Khi phepTinh bên View bấm là "-"
                    case "-":
                        {
                            bieuThuc.KetQuaTinhToan =
                                bieuThuc.SoThuNhat - bieuThuc.SoThuHai;
                            break;
                        }

                    // Khi phepTinh bên View bấm là "x"
                    case "x":
                        {
                            bieuThuc.KetQuaTinhToan =
                                bieuThuc.SoThuNhat * bieuThuc.SoThuHai;
                            break;
                        }

                    // Khi phepTinh bên View bấm là "/"
                    case "/":
                        {
                            // Kiểm tra nếu số thứ hai khác 0
                            if (bieuThuc.SoThuHai != 0)
                                bieuThuc.KetQuaTinhToan =
                                    bieuThuc.SoThuNhat / bieuThuc.SoThuHai;
                            else
                                bieuThuc.ThongBaoLoi = "Lỗi chia cho 0";
                            break;
                        }

                    default:
                        {
                            bieuThuc.ThongBaoLoi = "Không thể tính toán!";
                            break;
                        }
                }
            }

            // Gọi phương thức GET (ở bên trên),
            // truyền vào đối tượng model để trả kết quả về cho View
            return View(bieuThuc);
        }
    }
}