/**
 * 用户参与活动列表处理模块
 */
// 导入数据库操作模块
const db = require('../db/index')

// 获取个人参与活动列表的处理函数
exports.getMyActivity = (req, res) => {
    const sql = 'select * from ev_participate_active where username=?'
    console.log(req.body);
    db.query(sql, req.body.username, (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        res.send({
            status: 1,
            message: '获取个人活动列表成功！',
            data: results,
        })
    })
  }

// 增加个人参与活动列表的处理函数
exports.addMyActivity = (req, res) => {
//   res.send(req.body);

    // 定义查询 活动编号 与 活动名称 是否被占用的 SQL 语句
    const sql = `select * from ev_participate_active where username=? and activety_number=?`

    db.query(sql, [req.body.username, req.body.activety_number], (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        // 该用户已参与该活动
        if (results.length >= 1) return res.cc('已参与此活动，请勿重新参与！')

        // TODO：新增用户参与活动
        const sqls = `insert into ev_participate_active set ?`

        db.query(sqls, req.body, (err, results) => {
            // 1. 执行 SQL 语句失败
            if (err) return res.cc(err)
        
            // 2. 执行 SQL 语句成功
            res.send({
                status: 1,
                message: '新增用户活动信息成功！',
                data: results,
            })
        })
    })
}

// 根据活动编号删除参与活动的列表数据的处理函数
exports.deleteMyActivity = (req, res) => {
    // res.send(req.body);
    const sql = `delete from ev_participate_active where activety_number=?`
  
    db.query(sql, req.body.activety_number, (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        res.send({
            status: 1,
            message: '删除参与活动数据成功！',
            data: results,
        })
    })
  }