// 活动列表模块
const express = require('express')
const router = express.Router()

// 导入用户路由处理函数模块
const noticeHandler = require('../router_handler/activity')

// 获取活动列表
router.get('/activity', noticeHandler.getActivity)

// 新增活动列表
router.post('/activity/add', noticeHandler.addActivity)

// 查询具体活动信息(活动编号)
router.post('/activity/selectId', noticeHandler.selectActivity)

// 查询具体活动信息(用户名)
router.post('/activity/selectName', noticeHandler.selectActivityUname)

// 根据活动编号与发起人名称删除活动
router.post('/activity/delect', noticeHandler.deleteActivity)

module.exports = router

