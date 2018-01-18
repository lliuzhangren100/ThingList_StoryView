import { prefixDom } from 'cfx.dom'
import Dropdown from './Dropdown'
import Table from './Table'

CFX = prefixDom {
  'div'
  Dropdown
  Table
}

export default ->

  {
    c_div
    c_Dropdown
    c_Table
  } = CFX

  c_div
    key: 'div'
    style:
      minHeight: 570
      background: '#FAFAFA'
      padding: '24px 0'
  ,
    c_Dropdown {}
    c_Table
      key: 'Table'
      style:
        marginTop: '20px'