package com.chris.advice;

import com.chris.util.CommonResponse;
import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

/**
 * @Author: Chris Zhang
 * @Date: 5/3/20 20:01
 */
@RestControllerAdvice
public class CommonResponseAdvice implements ResponseBodyAdvice<Object>{

    @Override
    public boolean supports(MethodParameter methodParameter, Class<? extends HttpMessageConverter<?>> aClass) {
        return true;
    }

    @Override
    public Object beforeBodyWrite(Object o, MethodParameter methodParameter, MediaType mediaType, Class<? extends HttpMessageConverter<?>> aClass, ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse) {
        CommonResponse<Object> response = new CommonResponse<>("0", "");
        if(o == null)
            return response;
        else if(o instanceof CommonResponse){
            response = (CommonResponse<Object>) o;
        }else{
            response.setContent(o);
        }
        return response;
    }
}
