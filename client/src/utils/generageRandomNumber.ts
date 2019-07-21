interface Config {
  min: number;
  max: number;
  numbersToExclude: number[];
}

export function generateRandomNumber(config: Config): number {
  const { min, max, numbersToExclude } = config;
  const number = Math.floor(Math.random() * (max - min + 1)) + min;

  if (numbersToExclude.includes(number)) {
    return generateRandomNumber(config);
  } else {
    return number;
  }
}
