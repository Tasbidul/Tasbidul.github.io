// part a
const peterMkg = 92;
const peterHmeter = 1.95;
const lucasMkg = 78;
const lucasHmeter = 1.69;

const pbmi = peterMkg/(peterHmeter*peterHmeter)
const lbmi = lucasMkg/(lucasHmeter*lucasHmeter)

console.log("Part A");
console.log("The BMI of Peter is " + pbmi + " The BMI of Lucas is " + lbmi + " Lucas' BMI is higher than Petter’s BMI that is " + (lbmi>pbmi) + "!!" );

// part b
const celsius = Number(prompt('Please enter the celsius:'))
const fahrenheit = Number(prompt('Please enter the fahrenheit:'))

const ftoc = (fahrenheit - 32) * 5/9
const ctof = 1.8*celsius + 32

console.log("Part B");
console.log(celsius+"°C is "+ctof+"°F");
console.log(fahrenheit+"°F is "+ftoc+"°C");

// part c
console.log("Part C");
if (pbmi>lbmi) {
  console.log("Peter’s BMI (" + pbmi + ") is higher than Lucas' (" + lbmi + ")!");
}
else {
  console.log("Lucas' BMI (" + lbmi + ") is higher than Peter’s (" + pbmi + ")!");
}

//part d
console.log("Part D");
function CovertCelsiusToFahrenheit(c) {
  const cel = 1.8*c + 32
  return c+"°C is "+cel+"°F"
}
function CovertFahrenheitToCelsius(f) {
  const fah = (f - 32) * 5/9
  return f+"°F is "+fah+"°C"
}
console.log(CovertCelsiusToFahrenheit(100),CovertCelsiusToFahrenheit(0),CovertCelsiusToFahrenheit(10));
console.log(CovertFahrenheitToCelsius(32),CovertFahrenheitToCelsius(10),CovertFahrenheitToCelsius(102));
