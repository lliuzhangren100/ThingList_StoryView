import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { PageHeader } from 'cfx.antd-wrapper'
import editTable from '../Components/public/editTable'
import Steps from '../Components/public/Steps'
import PageContent from '../Components/public/PageContent'
import Buttons from '../Components/House/Step03_2/Buttons'


import HouseButtons from '../Components/House/HouseList/Buttons'
import HouseTable from '../Components/House/HouseList/Table'
import House from '../Components/House/HouseList'
import Step01 from '../Components/House/Step01'
import Step02 from '../Components/House/Step02'
import Step03_1 from '../Components/House/Step03_1'
# import Step03_2 from '../Components/House/Step03_2'
import HouseCard from '../Components/House/HouseDetailed/Card'
import HouseRoom from '../Components/public/Table'
import HouseDetailed from '../Components/House/HouseDetailed'
import RoomCard from '../Components/House/RoomDetailed/Card'
import RoomBed from '../Components/House/RoomDetailed/Table'
import RoomDetailed from '../Components/House/RoomDetailed'
import BedDetailed from '../Components/House/BedDetailed'

# import index from '../Components/Layout/index'

import Radio from '../Components/House/test/Modal/Radio'

CFX = prefixDom {
  Buttons
  PageContent
  editTable
  Radio
  PageHeader
  Card
  HouseButtons
  HouseTable
  House
  Steps
  Step01
  Step02
  Step03_1
  # Step03_2
  HouseCard
  HouseRoom
  HouseDetailed
  RoomCard
  RoomBed
  RoomDetailed
  BedDetailed
}

export default =>

  storiesOf '房源管理', module

  .add 'test'

  , =>

    {
      c_Radio
    } = CFX

    c_Radio {}  

  .add 'cp_添加房源按钮'

  , =>

    {
      c_Card
      c_HouseButtons
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseButtons {}

  .add 'cp_房源列表表格'

  , =>

    {
      c_Card
      c_HouseTable
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseTable {}

  .add 'pg_房源列表'

  , =>

    {
      c_PageHeader
      c_House
    } = CFX

    [
      c_PageHeader
        key: 'HouseList'
        breadcrumb: [
          '房源管理'
          '房源列表'
        ]
        title: '房源列表'    
      c_House
        key: 'House'
    ]  

  .add 'pg_step01添加房源地址'

  , =>

    {
      c_PageHeader
      c_Step01
    } = CFX
    
    [
      c_PageHeader
        key: 'address'
        breadcrumb: [
          '房源管理'
          '添加房源地址'
        ]
        title: '添加房源地址'
      c_Step01
        key: 'Step01'      
    ]

  .add 'pg_step02添加房东信息'

  , =>

    {
      c_PageHeader
      c_Step02
    } = CFX

    [
      c_PageHeader
        key: 'user'
        breadcrumb: [
          '房源管理'
          '添加房东信息'
        ]
        title: '添加房东信息'
      c_Step02
        key: 'Step03'
    ]

  .add 'pg_step03_1整租方式'

  , =>

    {
      c_PageHeader     
      c_Step03_1
    } = CFX

    [
      c_PageHeader
        key: 'rents'
        breadcrumb: [
          '房源管理'
          '添加出租方式'
        ]
        title: '添加出租方式'    
      c_Step03_1
        key: 'Step03_1'
    ]  

  .add 'pg_step03_2分组方式'

  , =>

    {
      c_PageHeader
      c_PageContent
      c_Steps
      c_editTable
      c_Buttons
    } = CFX

    [
      c_PageHeader
        key: 'rents'
        breadcrumb: [
          '房源管理'
          '添加出租方式'
        ]
        title: '添加出租方式'
      c_PageContent
        Content: [
          c_Steps
            current: 2
          c_editTable
            btn: '添加房间'
            Title1: '房间编号'
            Title2: '房间别名'
            Title3: '押金'
            Title4: '押付方式'
            Title5: '操作'
            dataSource: [
              key: '1'
              name: 'A'
              age: '10'
              money: '2000'
              theway: '押一付三'
            ]
            key: 'Step03'
          c_Buttons {}
        ]
    ]

  .add 'cp_房源详细'

  , =>

    {
      c_Card
      c_HouseCard
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseCard {}

  .add 'cp_房源房间表格'

  , =>

    {
      c_Card
      c_HouseRoom
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseRoom {}

  .add 'pg_房源详细信息'

  , =>

    {
      c_PageHeader
      c_HouseDetailed
    } = CFX
  
    [
      c_PageHeader
        key: 'Card'
        breadcrumb: [
          '房源管理'
          '房源详细信息'
        ]
        title: '房源详细信息'
      c_HouseDetailed {}
    ]  

  .add 'cp_房间详细'

  , =>

    {
      c_Card
      c_RoomCard
    } = CFX

    c_Card
      bordered: false
    ,
    c_RoomCard {}

  .add 'cp_房间床位表格'

  , =>

    {
      c_Card
      c_RoomBed
    } = CFX

    c_Card
      bordered: false
    ,
    c_RoomBed {}

  .add 'pg_房间详细信息'

  , =>

    {
      c_PageHeader
      c_RoomDetailed
    } = CFX

    [
      c_PageHeader
        key: 'Room'
        breadcrumb: [
          '房源管理'
          '房间详细信息'
        ]
        title: '房间详细信息'
      c_RoomDetailed {}
    ]   

  .add 'pg_床位详细信息'

  , =>

    {
      c_PageHeader
      c_BedDetailed
    } = CFX

    [
      c_PageHeader
        key: 'Bed'
        breadcrumb: [
          '房源管理'
          '床位详细信息'
        ]
        title: '床位详细信息'
      c_BedDetailed {}
    ]  

  # .add '主页'

  # , =>

  #   {
  #     c_index
  #   } = CFX

  #   c_index {}