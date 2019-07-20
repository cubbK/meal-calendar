import React from "react";
import { RouteComponentProps } from "@reach/router";
import data from "../data.json";
import { CalendarDay } from "./calendarPage/CalendarDay";

interface Recipe {
  name: string;
  link: string;
  ingredients: RecipeIngredient[];
  commonItems: string[];
  servings: number;
  caloriesPerServing: number;
}

interface RecipeIngredient {
  name: string;
  quantity: number | string;
}

interface Data {
  breakfast: Recipe[];
  lunchAndDinner: Recipe[];
  fruits: [
    {
      name: string;
      caloriesPerServing: number;
    }
  ];
}

interface CalendarPageProps extends RouteComponentProps {}

enum Day {
  Monday = "Monday",
  Tuesday = "Tuesday",
  Wednesday = "Wednesday",
  Thursday = "Thursday",
  Friday = "Friday",
  Saturday = "Saturday",
  Sunday = "Sunday"
}

enum Meal {
  Breakfast="Breakfast",
  Lunch="Lunch",
  Dinner="Dinner"
}

export function CalendarPage(props: CalendarPageProps) {
  const days = Object.values(Day);
  return (
    <React.Fragment>
      {days.map(day => (
        <CalendarDay day={day} />
      ))}
    </React.Fragment>
  );
}
