package tk.dntree.controller.web.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tk.dntree.service.ITreeService;

@WebServlet(urlPatterns = {"/api-user"})
public class UserAPI extends HttpServlet {

    private static final long serialVersionUID = 420119249075483834L;

    @Inject
    private ITreeService treeService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("application/json");
//		TreeModel updateTree = HttpUtil.of(request.getReader()).toModel(TreeModel.class);
//		updateTree = treeService.update(updateTree);
//		System.out.print(updateTree);
    }

    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
