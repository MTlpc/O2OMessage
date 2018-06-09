package com.ssm.learn.service;

import com.ssm.learn.entity.ShopMessage;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ShopMessageService {
    List<ShopMessage> getShopMessageList();

    void passShopInfo(int id);
}
