package com.ssm.learn.controller;

import com.ssm.learn.entity.ShopMessage;
import com.ssm.learn.service.ShopMessageService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/superadmin")
public class ShopMessageController {

    @Autowired
    ShopMessageService shopMessageService;

    @RequestMapping("/main")
    public String getShopMessagePage(HttpServletRequest request){
        List<ShopMessage> list = shopMessageService.getShopMessageList();
        request.setAttribute("list", list);
        return "index";
    }

    @RequestMapping("/update")
    public String passManage(@Param("id") int id){
        shopMessageService.passShopInfo(id);
        return "redirect:/superadmin/main";
    }

}
