import React, { useState } from "react";

import { ProgressSteps, Step } from "baseui/progress-steps";
import { Button } from "baseui/button";
import { Block } from "baseui/block";
import { StatefulSelect, TYPE } from "baseui/select";
import { RouteComponentProps } from "@reach/router";

interface PreferencesPageProps extends RouteComponentProps {}

export function PreferencesPage(props: PreferencesPageProps) {
  const [current, setCurrent] = useState(0);

  return (
    <ProgressSteps current={current}>
      <Step title="Create Account">
        <Block font="font400">Here is some step content</Block>

        <Button disabled>Previous</Button>
        <Button onClick={() => setCurrent(1)}>Next</Button>
      </Step>
      <Step title="Verify Payment">
        <Block font="font400">Here is some some content</Block>
        <Button onClick={() => setCurrent(0)}>Previous</Button>
        <Button onClick={() => setCurrent(2)}>Next</Button>
      </Step>
      <Step title="Add Payment Method">
        <Block font="font400">Here too!</Block>
        <Button onClick={() => setCurrent(1)}>Previous</Button>
        <Button disabled>Next</Button>
      </Step>
    </ProgressSteps>
  );
}
