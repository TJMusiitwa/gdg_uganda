/**
 * The destination time for the countdown timer.
 * This is set to November 30, 2024, at 17:00:00.
 * 
 * @type {number}
 */
let dest = new Date("Nov 30, 2024 17:00:00").getTime();

/**
 * An object containing references to the countdown timer elements.
 * @typedef {Object} CountdownElements
 * @property {NodeListOf<Element>} days - A NodeList of elements displaying the days.
 * @property {NodeListOf<Element>} hours - A NodeList of elements displaying the hours.
 * @property {NodeListOf<Element>} minutes - A NodeList of elements displaying the minutes.
 * @property {NodeListOf<Element>} seconds - A NodeList of elements displaying the seconds.
 */
const countdownElements = {
    days: document.querySelectorAll(".countdown-days"),
    hours: document.querySelectorAll(".countdown-hours"),
    minutes: document.querySelectorAll(".countdown-minutes"),
    seconds: document.querySelectorAll(".countdown-seconds")
};

/**
 * Updates the countdown timer by calculating the time difference between the current time and the destination time.
 * If the destination time has passed, it sets the destination time to the same day next month.
 * It then breaks down the time difference into days, hours, minutes, and seconds, and updates the corresponding HTML elements.
 */
function updateCountdown() {
    let now = new Date().getTime();
    let diff = dest - now;

    if (diff <= 0) {
        // Set the destination date to the same day next month
        let nextMonthDate = new Date();
        nextMonthDate.setMonth(nextMonthDate.getMonth() + 1);
        dest = nextMonthDate.getTime();
        return; // Exit the function
    }

    /**
     * An object representing the breakdown of time difference into days, hours, minutes, and seconds.
     * 
     * @typedef {Object} TimeUnits
     * @property {number} days - The number of days in the time difference.
     * @property {number} hours - The number of hours in the time difference.
     * @property {number} minutes - The number of minutes in the time difference.
     * @property {number} seconds - The number of seconds in the time difference.
     */
    let timeUnits = {
        days: Math.floor(diff / (1000 * 60 * 60 * 24)),
        hours: Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)),
        minutes: Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60)),
        seconds: Math.floor((diff % (1000 * 60)) / 1000)
    };

    for (let unit in timeUnits) {
        timeUnits[unit] = timeUnits[unit].toString().padStart(2, '0');
    }

    for (let unit in countdownElements) {
        countdownElements[unit].forEach(element => {
            element.innerHTML = `${timeUnits[unit]}`;
        });
    }

}
// Initial update
updateCountdown();

// Update every second
let countdownTimer = setInterval(updateCountdown, 1000);