import { Controller } from "@hotwired/stimulus"
import { Calendar } from "@fullcalendar/core";
import dayGridPlugin from "@fullcalendar/daygrid";
import interactionPlugin from '@fullcalendar/interaction';
import moment from "moment";

export default class extends Controller {
  static values = {
    userId: Number,
    recipeId: Number
  }
   connect() {
    this.initializeCalendar();
    console.log(this.recipeIdValue)
  }

  initializeCalendar() {
    const calendarEl = this.element.querySelector("#calendar");

    this.calendar = new Calendar(calendarEl, {
      titleFormat: {
        month: "short",
        year: "numeric",
        day: "numeric",
        weekday: "short"
      },
      plugins: [dayGridPlugin, interactionPlugin],
      initialView: "dayGridMonth",
      // Other FullCalendar options can be added here...
      dateClick: this.addPlanning.bind(this)
    });

    this.calendar.render();
  }

  addPlanning(event) {
    console.log(event)
    const user = this.userIdValue;
    const recipe = this.recipeIdValue;
    const date = moment(event.date).format("ddd, DD MMM YYYY")

    // Perform an AJAX request or any necessary action to add the planning to the database
    // For example:
    // You can use fetch API to send data to your backend endpoint

    console.log(user)
    console.log(recipe)
    console.log(date)
    fetch(`/recipes/${recipe}/plannings`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        "user_id": 8,
        "recipe_id": 21,
        "date": date,
        // Add other necessary fields for your planning
      }),
    })
    .then(response => {
      // Handle the response accordingly
      // For example, close the form and update the calendar if successful
      if (response.ok) {
        this.calendar.getApi().refetchEvents(); // Refresh events in calendar
        // You might need to handle other responses accordingly
      } else {
        // Handle error responses
        console.log(response)
      }
    })
    .catch(error => {
      console.error('Error:', error);
      // Handle any errors that occurred during the fetch
    });
  }
}
