import React from 'react'
import ReactDOM from 'react-dom'
import { ThemeProvider, CssBaseline } from '@material-ui/core'

import App from './components/App'
import theme from './theme'

ReactDOM.render(
  <React.StrictMode>
    <ThemeProvider theme={theme}>
      <CssBaseline />
      <App />
    </ThemeProvider>
  </React.StrictMode>,
  document.getElementById('root')
)
