import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import test from '../Components/House/test/Table'

CFX = prefixDom {
  test
}

export default =>

  storiesOf '测试代码', module

  .add 'test'

  , =>

    {
      c_test
    } = CFX
    
    c_test {}