const x = 1;

let b;

// Test comment

const arr = [1, 2, 3];
const c = null;

const res = arr.reduce((previous, current) => previous + current, 0);


for (let i = 0; i < 10; i++) {
  console.log('hello');
      if (i === 5) {
        console.log('another indent level');
  }
}

console.log(res);

const makeCaps = (string) => {
    return string.toUppercase();
}

const testFunc = () => {
    return 1;
}

const total = testFunc() + 1;
