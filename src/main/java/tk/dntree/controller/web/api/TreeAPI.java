package tk.dntree.controller.web.api;

import tk.dntree.model.TreeModel;
import tk.dntree.service.ITreeService;
import tk.dntree.service.impl.TreeService;
import tk.dntree.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;

@WebServlet(urlPatterns = {"/api-tree"})
public class TreeAPI extends HttpServlet {

    private static final long serialVersionUID = 420119249075483834L;

    @Inject
    private ITreeService treeService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        TreeModel tree = HttpUtil.of(request.getReader()).toModel(TreeModel.class);
        tree = treeService.save(tree);
        System.out.print(tree);
    }

    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        TreeModel tree = HttpUtil.of(request.getReader()).toModel(TreeModel.class);
        tree = treeService.update(tree);
        mapper.writeValue(response.getOutputStream(), tree);
    }

//    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//    	ObjectMapper mapper = new ObjectMapper();
//    	request.setCharacterEncoding("UTF-8");
//    	response.setContentType("application/json");
//    	TreeModel tree = HttpUtil.of(request.getReader()).toModel(TreeModel.class);
//    	TreeService.de
//    }
}
