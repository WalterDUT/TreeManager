package tk.dntree.utils;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;

//khi su dung MVC, chung ta submit form de data truyen vao controller ma chung ta ko can phai getParameter ma
// map len dc model thi ham nay co nhiem vu nhu vay
public class FormUtil {
    // unchecked/
    public static <T> T toModel(Class<T> clazz, HttpServletRequest request) {
        T objecT = null;
        try {
            objecT = clazz.newInstance();
            BeanUtils.populate(objecT, request.getParameterMap());
        } catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
            System.out.println(e.getMessage());
        }
        return objecT;
    }
}
