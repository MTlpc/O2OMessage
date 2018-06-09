package com.ssm.learn.service.Impl;

import com.ssm.learn.dao.ShopMessageDao;
import com.ssm.learn.entity.ShopMessage;
import com.ssm.learn.service.ShopMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopMessageServiceImpl implements ShopMessageService {

    @Autowired
    ShopMessageDao shopMessageDao;

    @Override
    public List<ShopMessage> getShopMessageList() {

        return shopMessageDao.queryShopList();
    }

    @Override
    public void passShopInfo(int id) {

        shopMessageDao.updateMessage(id);
    }
}
