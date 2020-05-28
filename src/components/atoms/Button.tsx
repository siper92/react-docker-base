import React from 'react'
import MuiButton from '@material-ui/core/Button'

const Button: React.FC = props => {
  return (
    <MuiButton
      color="primary"
      size="small"
      variant="contained"
      {...props}
    >
      {props.children}
    </MuiButton>
  )
}

export default Button
