import { prefixDom } from 'cfx.dom'
import {
  Form
  Table
  Icon
  Divider
  Card
  Button
} from 'antd'

{
  Column
  ColumnGroup
} = Table

FormItem = Form.Item
CFX = prefixDom {
  'div'
  'a'
  'span'
  Table
  Icon
  Divider
  Column
  ColumnGroup
  Card
  Button
  Form
  FormItem
}

export default =>

  data: [
      key: '1'
      age: 2
      name: 'A'
      money: '2000'
      theway: '押一付三'
    ,
      key: '2'
      age: 6
      name: 'B'
      money: '1000'
      theway: '押一付三'      
    ,
      key: '3'
      name: 'C'
      age: 4
      money: '1000'
      theway: '押一付三'        
  ]

  rowSelection:
    onChange: (selectedRowKeys, selectedRows) =>
      console.log("selectedRowKeys: #{selectedRowKeys}", 'selectedRows: ', selectedRows)
    getCheckboxProps: (record) =>
      disabled: record.name == 'Disabled User'

  render: ->

    {
      c_a
      c_span
      c_Table
      c_Icon
      c_Divider
      c_div
      c_Column
      c_ColumnGroup
      c_Card
      c_Button
      c_Form
      c_FormItem
    } = CFX

    c_div {}
    ,
      c_div
        style:
          fontSize: '16px'
          color: 'rgba(0,0,0,.85)'
          fontWeight: '500'
          marginBottom: '16px'
      , '床位详细'
      c_FormItem {}
      ,
        c_Button
          style:
            float: 'right'
          key: 'primary'
          type: 'primary'
        , '添加床位'

      c_Table
        dataSource: @data
        rowSelection: @rowSelection
      ,

        c_Column
          title: '床位编号'
          dataIndex: 'name'
          key: 'name'
        c_Column
          title: '床位别名'
          dataIndex: 'age'
          key: 'age'
        c_Column
          title: '租金'
          dataIndex: 'money'
          key: 'money'
        c_Column
          title: '押付方式'
          dataIndex: 'theway'
          key: 'house'
        c_Column
          title: '操作'
          key: 'operating'
          width: '105px'

          render: =>
            c_span {}
            ,
              c_a
                key: 'a3'
                style:
                  color: '#F00'
                href: '#'
              , '删除'  