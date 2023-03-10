// 讯息通知模块
const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const noticeHandler = require('../router_handler/notice')

// 1. 导入验证表单数据的中间件
const expressJoi = require('@escook/express-joi')
// 2. 导入需要的验证规则对象
const { add_notice_schema } = require('../schema/notice')

// 获取讯息列表
router.post('/notice', noticeHandler.getNoticeInfo)

// 增加讯息列表
router.post('/notice/add',expressJoi(add_notice_schema), noticeHandler.addNoticeInfo)

// 删除讯息列表
router.post('/notice/delete', noticeHandler.deleteNoticeInfo)

module.exports = router

