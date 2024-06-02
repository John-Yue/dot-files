const { Lunar } = require("./lunar");
const d = Lunar.fromDate(new Date());

const yi = d.getDayYi().slice(0, 3).join(" ");
const ji = d.getDayJi().slice(0, 3).join(" ");

function getTodayYiJi() {
  return {
    yi,
    ji,
  };
}

module.exports = {
  getTodayYiJi,
};


// test
console.log(JSON.stringify(getTodayYiJi()))
