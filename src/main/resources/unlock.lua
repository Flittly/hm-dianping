-- 这里的KEYS[1] 是锁的key,这里的ARGV[1] 是当前线程标示
-- 获取锁中的线程标示 get key
local id = redis.call("GET", KEYS[1])

--比较线程标示与锁中标示是否相同
if (id == ARGV[1]) then
    -- 释放锁
    return redis.call("DEL", KEYS[1])
end
return 0
