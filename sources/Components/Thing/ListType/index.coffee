import { prefixDom } from 'cfx.dom'
import { ContentPage } from 'cfx.antd-wrapper-ch'
import Steps from './Steps'
import Radios from './Radios'

CFX = prefixDom {
  'div'
  Steps
  ContentPage
  Radios
}

export default =>
  console.log Steps
  render: ->

    {
      c_div
      c_ContentPage
      c_Steps
      c_Radios
    } = CFX
    c_div {}
    ,
      c_ContentPage
        Content: [
          c_Steps
            current: 0
          c_Radios
            key: 'Radios'
            LinkTo1: @props.AddThingListType_Live
            LinkTo2: @props.AddThingListType_Retire
            LinkTo3: @props.AddThingListType_Then
            LinkTo4: @props.AddThingListType_Change
        ]