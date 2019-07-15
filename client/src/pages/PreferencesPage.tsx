import React, { useState } from "react";

import { ProgressSteps, Step } from "baseui/progress-steps";
import { Button, KIND } from "baseui/button";
import { ButtonGroup } from "baseui/button-group";
import { Block } from "baseui/block";
import { RouteComponentProps, Link } from "@reach/router";

interface PreferencesPageProps extends RouteComponentProps {}

export function PreferencesPage(props: PreferencesPageProps) {
  const [currentStepIndex, setCurrentStepIndex] = useState(0);
  const [gender, setGender] = useState<{
    index: number;
    name: string;
  }>({
    index: 0,
    name: "Male"
  });

  const handleGenderChange = (event: any, index: number) => {
    if (index === 0) {
      setGender({ index: index, name: "Male" });
    } else if (index === 1) {
      setGender({ index: index, name: "Female" });
    }
  };

  return (
    <ProgressSteps current={currentStepIndex}>
      <Step title="Select Gender">
        <ButtonGroup
          selected={gender.index}
          mode="radio"
          onClick={handleGenderChange as any}
        >
          <Button>Male</Button>
          <Button>Female</Button>
        </ButtonGroup>

        <Button disabled>Previous</Button>
        <Button onClick={() => setCurrentStepIndex(1)}>Next</Button>
      </Step>
      <Step title="Weight&Height">
        <Block font="font400">Here is some some content</Block>
        <Button onClick={() => setCurrentStepIndex(0)}>Previous</Button>
        <Button onClick={() => setCurrentStepIndex(2)}>Next</Button>
      </Step>
      <Step title="Add Payment Method">
        <Block font="font400">Here too!</Block>
        <Button onClick={() => setCurrentStepIndex(1)}>Previous</Button>
        <Link to="/calendar">
          <Button>Submit</Button>
        </Link>
      </Step>
    </ProgressSteps>
  );
}
