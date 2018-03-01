import React, { Component } from 'react'
import { Card } from 'antd'
import { prefixDom } from 'cfx.dom'
import { Table } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
  Card
  Table
}

export default ->

  render: ->

    {
      c_Card
      c_Table
    } = CFX

    c_Card
      bordered: false
    ,
      c_Table
        key: 'Table'
        btn: '添加房间'
        # addChildren: true
        editPen: true
        header:
          num: '房间编号'
          name: '房间别名'
          moneys: '押金'
          status: '押付方式'
        childrenHeader:
          num: '床位编号'
          name: '床位别名'
          money: '租金'
          status: '押付方式'
        dataSource: [
            key: '01'
            num: 'A'
            name: '主卧'
            moneys: '1000'
            status: '押一付三'
            Children: [
                key: '011'
                num: 'A'
                name: '1'
                money: '1000'
                status: '押一付三'
              ,
                key: '012'
                num: 'B'
                name: '1'
                money: '2000'
                status: '押一付三'
            ]
        ]