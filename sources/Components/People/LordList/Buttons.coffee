import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { Button } from 'antd'

CFX = prefixDom {
  'div'
  Button
}

class Drop extends Component

  handleMenuClick: (e) ->
    message.info 'Click on menu item.'
    console.log 'click', e

  render: ->

    {
      c_div
      c_Button 
    } = CFX

    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_Button
        style:
          float: 'right'
        key: 'primary'
        type: 'primary'
      , '添加房东'

export default Drop