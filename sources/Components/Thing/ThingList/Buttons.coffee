import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
CFX = prefixDom {
  'div'
}
export default ->

  render: ->
    CFX = {
      CFX...
      (
        prefixDom
          AddThingList: @props.AddThingList
      )...
    }
    
    {
      c_div
      c_AddThingList
    } = CFX
    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_AddThingList {}
      , '添加工单'