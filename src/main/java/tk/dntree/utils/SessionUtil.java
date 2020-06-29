package tk.dntree.utils;

import javax.servlet.http.HttpServletRequest;

//putValue: duy tri thong tin nguoi dung
//removeValue: thoat ra khoi hthong
//getValue: lay thong tin ra khoi hthong
//tai su dung lai cac doi tuong khi moi lan request (ko can phai new ...(may lai cung cap them bo nho cho bien) nua)
public class SessionUtil {
    private static SessionUtil sessionUtil = null;

    public static SessionUtil getInstance() {
        if (sessionUtil == null) {
            sessionUtil = new SessionUtil();
        }
        return sessionUtil;

    }

    public void putValue(HttpServletRequest request, String key, Object value) {
        request.getSession().setAttribute(key, value);
    }

    public void removeValue(HttpServletRequest request, String key) {
        request.getSession().removeAttribute(key);
    }

    // ep kieu -> kieu du lieu muon
    public Object getValue(HttpServletRequest request, String key) {
        return request.getSession().getAttribute(key);
    }
}
