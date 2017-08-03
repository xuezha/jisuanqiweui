package com.ztz.springmvc.controller;

import com.ztz.springmvc.utils.CalculatorUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yemin on 2017/8/3.
 */
@Controller
public class Calculator {
    @RequestMapping(value="/calculator",method = RequestMethod.GET)
    private String cal(){
        return "calculator";
    }
    @RequestMapping(value="/calculator",method= RequestMethod.POST)
    @ResponseBody
    private String calculator(@RequestParam(value="expression",defaultValue="")String expression, HttpServletRequest request, HttpServletResponse response)throws Exception{
//        String expression = request.getParameter("data");
        CalculatorUtil calculatorUtil = new  CalculatorUtil(expression);
        String result = calculatorUtil.start();
        return result;
    }
}
