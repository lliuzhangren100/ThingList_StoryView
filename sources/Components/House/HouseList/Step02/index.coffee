import { prefixDom } from 'cfx.dom'
import pageHeader from '../public/PageHeader'
import ContentCard from '../public/ContentCard'
import Steps from '../public/Steps'
import Form from './Form'

CFX = prefixDom {
  'div'
  pageHeader
  ContentCard
  Steps
  Form
}

export default ->

  render: ->

    {
      c_div
      c_pageHeader
      c_ContentCard
      c_Steps
      c_Form
    } = CFX

    c_div {}
    ,
      c_pageHeader
        title: 'user'
      c_ContentCard
        contentCard: [
          c_Steps
            current: 1
          c_Form {}
        ]
