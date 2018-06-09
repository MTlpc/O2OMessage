package com.ssm.learn.dao;

import com.ssm.learn.entity.ShopMessage;

import java.util.List;

public interface ShopMessageDao {

    List<ShopMessage> queryShopList();

    void updateMessage(int id);

}
