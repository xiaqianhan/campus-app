/**
 * 活动列表处理模块
 */
// 导入数据库操作模块
const db = require('../db/index')

// 获取活动列表的处理函数
exports.getActivity = (req, res) => {
    // res.send("111111111111111");
    const sql = 'select * from ev_activety'

    db.query(sql, (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        res.send({
            status: 1,
            message: '获取活动列表成功！',
            data: results,
        })
    })
  }

// 增加活动的处理函数
exports.addActivity = (req, res) => {
//   res.send(req.body);

    // 定义查询 活动编号 与 活动名称 是否被占用的 SQL 语句
    const sql = `select * from ev_activety where title=? or number=?`

    db.query(sql, [req.body.title, req.body.number], (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        // 活动名称，编号，发布者，地点，开始时间，结束时间均相同
        if (results.length === 1 && results[0].title === req.body.title && results[0].number == req.body.number && results[0].sponsor === req.body.sponsor && results[0].place === req.body.place && results[0].start_time === req.body.start_time && results[0].stop_time === req.body.stop_time) return res.cc('你已发布了此活动，请更换后重试！')
        // 活动名称 和 活动编号 都被占用
        if (results.length === 2) return res.cc('已有此活动，请更换后重试！')
        if (results.length === 1 && results[0].title === req.body.title && results[0].number == req.body.number) return res.cc('已有此活动，请更换后重试！')
        // 活动编号被占用
        if (results.length === 1 && results[0].number == req.body.number) return res.cc('活动编号已被占用，请更换后重试！')
        // TODO：新增文章活动
        const sqls = `insert into ev_activety set ?`

        db.query(sqls, req.body, (err, results) => {
            // 1. 执行 SQL 语句失败
            if (err) return res.cc(err)
        
            // 2. 执行 SQL 语句成功
            res.send({
                status: 1,
                message: '新增活动信息成功！',
                data: results,
            })
        })
    })
}

// 根据活动编号值查询活动内容的处理函数
exports.selectActivity = (req, res) => {
    // res.send("11111111111111")
    const sql = 'select * from ev_activety where number=?'
    console.log(req.body);
    db.query(sql, req.body.number, (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        res.send({
            status: 1,
            message: '当前活动内容查询成功！',
            data: results,
        })
    })
}

// 根据活动用户名查询活动内容的处理函数
exports.selectActivityUname = (req, res) => {
    // res.send("11111111111111")
    const sql = 'select * from ev_activety where sponsor_username=?'
    console.log(req.body);
    db.query(sql, req.body.sponsor_username, (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        res.send({
            status: 1,
            message: '当前活动内容查询成功！',
            data: results,
        })
    })
}

// 根据活动编号和活动名称删除参与活动的列表数据的处理函数
exports.deleteActivity = (req, res) => {
    // res.send(req.body);
    const sql = `delete from ev_activety where sponsor_username=? and number=?`
    // console.log(req.body);
    db.query(sql, [req.body.sponsor_username,req.body.number], (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        res.send({
            status: 1,
            message: '删除活动数据成功！',
            data: results,
        })
    })
  }