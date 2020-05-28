import React from 'react'
import { action } from '@storybook/addon-actions'
import Button from '../components/atoms/Button'

export default {
  title: 'Button',
  component: Button,
}

export const RegularButton = () => (
  <Button onClick={action('clicked')}>Hello Button</Button>
)
