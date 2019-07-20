import React from "react";
import { Card, StyledBody } from "baseui/card";

export function CalendarDay(props: {day: string}) {
  return (
    <Card overrides={{ Root: { style: { width: "328px" } } }}>
      {props.day}
      <StyledBody>
        hey
    </StyledBody>
    </Card>
    
  );
}
