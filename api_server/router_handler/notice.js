/**
 * 讯息通知处理模块
 */
// 导入数据库操作模块
const db = require('../db/index')

// 获取讯息通知的处理函数
exports.getNoticeInfo = (req, res) => {
    // res.send(req.body);
    // 根据分类的状态，获取所有未被删除的分类列表数据
    // is_delete 为 0 表示没有被 标记为删除 的数据
    // type为通知类型，1为紧急通知，2为学生评选，3为会议安排，4为工作动态，5为教师评选
    const sql = 'select * from ev_notice where is_delect=0 and type=?'
    console.log(req.body);

    db.query(sql, req.body.type, (err, results) => {
        // 1. 执行 SQL 语句失败
        if (err) return res.cc(err)
        
        // 2. 执行 SQL 语句成功
        res.send({
            status: 1,
            message: '获取文章分类列表成功！',
            data: results,
        })
    })
  }

// 增加讯息通知的处理函数
exports.addNoticeInfo = (req, res) => {
  // res.send(req.body);
  // type为通知类型，1为紧急通知，2为学生评选，3为会议安排，4为工作动态，5为教师评选
  const sql = `insert into ev_notice set ?`
  console.log(req.body);
  db.query(sql, req.body, (err, results) => {
      // 1. 执行 SQL 语句失败
      if (err) return res.cc(err)
      
      // 2. 执行 SQL 语句成功
      res.send({
          status: 1,
          message: '新增讯息通知成功！',
          data: results,
      })
  })
}

// 删除讯息通知的处理函数
exports.deleteNoticeInfo = (req, res) => {
  // res.send(req.body);
  // 根据分类的类型和id值删除对应数据列表
  // type为通知类型，1为紧急通知，2为学生评选，3为会议安排，4为工作动态，5为教师评选
  // const sql = `update ev_notice set type=? where id=?`
  const sql = `delete from ev_notice where  type=? and id=?`

  db.query(sql, [req.body.type, req.body.id], (err, results) => {
      // 1. 执行 SQL 语句失败
      if (err) return res.cc(err)
      
      // 2. 执行 SQL 语句成功
      res.send({
          status: 1,
          message: '删除讯息通知成功！',
          data: results,
      })
  })
}