package org.seckill.dao;

import org.seckill.entity.SuccessKilled;

/**
 * Created by Jimersy Lee on 2016-9-14.
 */
public interface SuccessKilledDao {


    /**
     * 插入购买明细,可过滤重复
     * @param seckillId
     * @param userPhone
     * @return 插入的行数,如果失败返回0,正常1
     */
    int insertSuccessKilledDao(long seckillId,long userPhone);


    /**
     * 根据id查询SuccessKilled并携带秒杀产品对象实体
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(long seckillId);


}
