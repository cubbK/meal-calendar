import React from "react";

import { Client as Styletron } from "styletron-engine-atomic";
import { Provider as StyletronProvider } from "styletron-react";
import { LightTheme, BaseProvider, styled } from "baseui";
import { LandingPage } from "./pages/LandingPage";
import { Router } from "@reach/router";

const engine = new Styletron();

const App: React.FC = () => {
  return (
    <StyletronProvider value={engine}>
      <BaseProvider theme={LightTheme}>
        <Router>
          <LandingPage path="/" />
        </Router>
      </BaseProvider>
    </StyletronProvider>
  );
};

export default App;
