import React from "react";

import { Client as Styletron } from "styletron-engine-atomic";
import { Provider as StyletronProvider } from "styletron-react";
import { LightTheme, BaseProvider } from "baseui";
import { LandingPage } from "./pages/LandingPage";
import { Router } from "@reach/router";
import { PreferencesPage } from "./pages/PreferencesPage";
import { CalendarPage } from "./pages/CalendarPage";

const engine = new Styletron();


const App: React.FC = () => {
  return (
    <StyletronProvider value={engine}>
      <BaseProvider theme={LightTheme}>
        <Router>
          <LandingPage path="/" />
          <PreferencesPage path="preferences" />
          <CalendarPage path="calendar" />
        </Router>
      </BaseProvider>
    </StyletronProvider>
  );
};

export default App;
