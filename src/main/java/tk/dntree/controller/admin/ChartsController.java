package tk.dntree.controller.admin;

import tk.dntree.constant.SystemConstant;
import tk.dntree.model.TreeModel;
import tk.dntree.service.ITreeService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-menu-charts"})
public class ChartsController extends HttpServlet {
    private static final long serialVersionUID = 2990196416970679956L;
    @Inject
    private ITreeService treeService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TreeModel model = new TreeModel();
        model.setListResult(treeService.findAll());
        request.setAttribute(SystemConstant.MODEL, model);
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/menu-charts.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
