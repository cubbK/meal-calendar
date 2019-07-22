import React from "react";
import { RouteComponentProps } from "@reach/router";
import data from "data.json";
import { CalendarDay } from "./calendarPage/CalendarDay";
import { generateRandomNumber } from "utils/generageRandomNumber";
import Combinatorics from "js-combinatorics";

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
  const mealsCalendar = getMealsCalendar({ meals: data, dailyCalories: 2400 });
  return <React.Fragment>Calendar page</React.Fragment>;
}

// get the final form of the picked meals and disribuited to each day
function getMealsCalendar(config: { meals: Data; dailyCalories: number }) {
  const { meals, dailyCalories } = config;
  const numberOfLunchesAndDinners = 4;

  const lunchesAndDinners = getRandomMeals({
    meals: data.lunchAndDinner,
    howMany: numberOfLunchesAndDinners
  });
  const breakfasts = getRandomMeals({
    meals: data.breakfast,
    howMany: 2
  });

  // canSetMakeSum({ set: [], sum: 4 });
  canValuesFormNumber({values: [], numberToForm: 5})
}

// pick randomly n lunchesAndDinners and store their
// indexes in an array
function getRandomMeals(config: {
  meals: Recipe[];
  howMany: number;
}): Recipe[] {
  const { meals, howMany } = config;

  let mealsIndex: number[] = [];
  for (let i = 0; i < howMany; i++) {
    const generatedNumber = generateRandomNumber({
      min: 0,
      max: meals.length - 1,
      numbersToExclude: mealsIndex
    });

    mealsIndex.push(generatedNumber);
  }

  const chosenMeals = mealsIndex.map(index => meals[index]);
  return chosenMeals;
}

function canSetMakeSum(config: { set: number[]; sum: number }): boolean {
  const { set, sum } = config;

  const setSum = set.reduce(
    (accumulator, currentValue) => accumulator + currentValue
  );

  if (setSum > sum) {
    return false;
  }
  if (setSum === sum) {
    return true;
  }

  const rest = sum - setSum;

  const canSetFormRest = canValuesFormNumber({
    values: set,
    numberToForm: rest
  });

  return canSetFormRest;
}

export function canValuesFormNumber(config: {
  values: number[];
  numberToForm: number;
}): boolean {
  const { values, numberToForm } = config;

  if(values.length === 0) {
    throw Error("Value list cannot be empty");
    
  }
  if(numberToForm < 1) {
    throw Error("NumberToFrom cannot be < 1")
  }

  const allCombinations: number[][] = []
  for(const [i, value] of Object.entries(values)) {
    allCombinations.push(...Combinatorics.baseN(values, Number(i)).toArray())
  } 

  const allCombinationSums = allCombinations.map(list =>
    list.reduce((accumulator, currentValue) => accumulator + currentValue)
  );

  debugger
  for (const combinationSum of allCombinationSums) {
    if (combinationSum === numberToForm) {
      return true;
    }
  }
  return false;
}
