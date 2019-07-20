import React from "react";
import { RouteComponentProps } from "@reach/router";
import data from "data.json";
import { CalendarDay } from "./calendarPage/CalendarDay";
import { generateRandomNumber } from "utils/generageRandomNumber";

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
  Breakfast = "Breakfast",
  Lunch = "Lunch",
  Dinner = "Dinner"
}

// 7 breakfasts
// 7 lunch
// 7 dinner

export function CalendarPage(props: CalendarPageProps) {
  const mealsCalendar = getMealsCalendar(data, 2400);
  return <React.Fragment>Calendar page</React.Fragment>;
}

function getMealsCalendar(meals: Data, dailyCalories: number) {
  const numberOfLunchesAndDinners = 4;

  let lunchesAndDinnersIndex: number[] = [];
  for (let i = 0; i < numberOfLunchesAndDinners; i++) {
    const generatedNumber = generateRandomNumber(
      0,
      meals.lunchAndDinner.length - 1,
      lunchesAndDinnersIndex
    );
    lunchesAndDinnersIndex.push(generatedNumber);
  }
  console.log(lunchesAndDinnersIndex);
}
