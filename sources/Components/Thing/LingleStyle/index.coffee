import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Radios from './Radios'

CFX = prefixDom {
  'div'
  Steps
  PageContent
  Radios
}

export default ->

  render: ->

    {
      c_div
      c_PageContent
      c_Steps
      c_Radios
    } = CFX

    c_div {}
    ,
      PageContent
        Content: [
          c_Steps
            current: '01'
          c_Radios {}  
        ]