import { prefixDom } from 'cfx.dom'
import {
  Content
  pageHeader
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Content
  pageHeader
}

export default ({ props... }) ->

  {
    title
  } = props

  {
    c_Content
    c_pageHeader
  } = CFX

  if title is 'HouseList'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '房源列表'
      ]
      title: '房源列表'
  ]
  else if title is 1
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '添加房源'
      ]
      title: '房源地址'
  ]
  else if title is 'address'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '添加房源地址'
      ]
      title: '添加房源地址'
  ]
  else if title is 'user'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '添加房东信息'
      ]
      title: '添加房东信息'
  ]
  else if title is 'rents'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '添加整租方式'
      ]
      title: '添加整租方式'
  ]
  else if title is 'rent'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '添加分租方式'
      ]
      title: '添加分租方式'
  ]
  else if title is 'Card'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '房源详细信息'
      ]
      title: '房源详细信息'
  ]
  else if title is 'Room'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '房间详细信息'
      ]
      title: '房间详细信息'
  ]
  else if title is 'Bed'
  then [
    c_pageHeader
      breadcrumb: [
        '房源管理'
        '床位详细信息'
      ]
      title: '床位详细信息'
  ]       

