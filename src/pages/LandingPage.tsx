import React from "react";
import { Display } from "baseui/typography";
import { RouteComponentProps } from "@reach/router";

interface LandingPageProps extends RouteComponentProps {
  
}

export function LandingPage(props: LandingPageProps) {
  return (
    <div>
      <Display>
        Get a Plan of Your Meals for Every Single Day of the Week
      </Display>
    </div>
  );
}
