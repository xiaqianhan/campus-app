// 用户参与活动列表模块
const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const noticeHandler = require('../router_handler/myactivity')

// 获取参与活动列表
router.post('/myactivity', noticeHandler.getMyActivity)

// 新增参与活动列表
router.post('/myactivity/add', noticeHandler.addMyActivity)

// 根据活动编号删除参与活动
router.post('/myactivity/delete', noticeHandler.deleteMyActivity)

module.exports = router

