package tk.dntree.utils;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;

//tien ich :util
public class HttpUtil {
    private String value;

    public HttpUtil(String value) {
        this.value = value;
    }

    //Receive Input -> convert json to string
    public static HttpUtil of(BufferedReader reader) {
        StringBuilder stringBuilder = new StringBuilder();

        try {
            String line;
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line);
            }
        } catch (IOException e) {
            System.out.print(e.getMessage());
        }
        return new HttpUtil(stringBuilder.toString());
    }

    public <T> T toModel(Class<T> tClass) {
        try {
            return new ObjectMapper().readValue(value, tClass);
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
        return null;
    }

}
