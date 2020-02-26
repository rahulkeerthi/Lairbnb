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
  if (count > 1) {
    counter.innerText = `${count} days`;
  } else {
    counter.innerText = `${count} day`;
  }
};

const updateButton = (priceDollars) => {
  const button = document.getElementById('paybutton');
  button.disabled = false;
  button.value = `PAY $${priceDollars}`;
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
    counter.dataset.count = 0;
    counter.innerText = `Set a valid date combo!`;
    const button = document.getElementById('paybutton')
    button.value = "KAPOW!";
    button.disabled = true;
    event.preventDefault();
  }
};

const updateFormOnChange = (dropdown) => {
  dropdown.addEventListener('change', updateForm);
};

const dropdowns = document.querySelectorAll('.dropdown');
dropdowns.forEach(updateFormOnChange);
