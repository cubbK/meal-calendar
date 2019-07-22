import { canValuesFormNumber } from "pages/CalendarPage";

it("returns true where there is a match", () => {
  expect(canValuesFormNumber({ values: [1, 2], numberToForm: 3 })).toBe(true);
  expect(canValuesFormNumber({ values: [1, 2], numberToForm: 2 })).toBe(true);
  expect(canValuesFormNumber({ values: [1, 4, 6, 8], numberToForm: 18 })).toBe(
    true
  );
  expect(canValuesFormNumber({ values: [1, 2], numberToForm: 4 })).toBe(true);
});

it("returns false where there isnt't a match", () => {
  expect(canValuesFormNumber({ values: [1, 2], numberToForm: 5 })).toBe(false);
  expect(canValuesFormNumber({ values: [1, 4], numberToForm: 3 })).toBe(false);
  expect(canValuesFormNumber({ values: [1, 4, 6, 8], numberToForm: 66 })).toBe(
    false
  );
});

it("throws on empty array", () => {
  // if the code throws then there's the need to wrap it in a function
  expect(() => canValuesFormNumber({ values: [], numberToForm: 5 })).toThrow();
});

it("throws on numer to form < 1", () => {
  // if the code throws then there's the need to wrap it in a function
  expect(() => canValuesFormNumber({ values: [1, 2], numberToForm: 0 })).toThrow();
  expect(() => canValuesFormNumber({ values: [1, 2], numberToForm: -5 })).toThrow();
});
