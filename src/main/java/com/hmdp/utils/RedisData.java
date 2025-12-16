package com.hmdp.utils;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class RedisData {
    private LocalDateTime expireTime; //逻辑过期时间
    private Object data; // 想要存进数据库中的数据
}
