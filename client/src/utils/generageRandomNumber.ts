export function generateRandomNumber(
  min: number,
  max: number,
  numbersToExclude: number[]
): number {
  const number = Math.floor(Math.random() * (max - min + 1)) + min;

  if (numbersToExclude.includes(number)) {
    return generateRandomNumber(min, max, numbersToExclude);
  } else {
    return number;
  }
}
