const stayLengthCalc = () => {
  let startYear = parseInt(document.querySelector('#booking_start_date_1i').value);
  let startMonth = parseInt(document.querySelector('#booking_start_date_2i').value);
  let startDay = parseInt(document.querySelector('#booking_start_date_3i').value);
  let endYear = parseInt(document.querySelector('#booking_end_date_1i').value);
  let endMonth = parseInt(document.querySelector('#booking_end_date_2i').value);
  let endDay = parseInt(document.querySelector('#booking_end_date_3i').value);
  let startDate = new Date(startYear, startMonth, startDay);
  let endDate = new Date(endYear, endMonth, endDay);
  let lengthOfStay = parseInt((endDate - startDate) / 86400000);
  return lengthOfStay;
}

const updateCounter = (counter, count) => {
  counter.dataset.count = count;
  counter.innerText = `${count} days`;
};

const updateButton = (priceDollars) => {
  const button = document.getElementById('paybutton');
  button.value = `Pay $${priceDollars}`;
};

const updateForm = (event) => {
  console.log(event);
  console.log("ping!");
  const dayRate = document.getElementById('dayrate').dataset.price;
  const counter = document.getElementById('counter');
  let count = counter.dataset.count
  count = stayLengthCalc();
  const priceDollars = dayRate * count;
  if (count >= 1) { {}
    updateCounter(counter, count);
    updateButton(priceDollars);
  } else {
    event.preventDefault();
  }
};

const updateFormOnChange = (dropdown) => {
  dropdown.addEventListener('click', updateForm);
};

const dropdowns = document.querySelectorAll('.dropdown');
dropdowns.forEach(updateFormOnChange);
