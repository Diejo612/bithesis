import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ["completed"];

  connect() {
    console.log(this.checkboxTarget)
  }



  update_status() {
    console.log(this.data.get('station-id'))
    let formData = new FormData();
    formData.append("completed[completed]", this.completedTarget.checked);
    fetch(this.data.get("update-url"), {
      body: formData,
      method: "PATCH",
      // dataType: "script",
      credentials: "include",
      headers: {
        "X-CSRF-Token": csrfToken(),
        'Accept': "application/json",
      },
    });

    fetch(`/station_statuses/${this.data.get("station-id")}`, {
      method: "PATCH",
      body: formData,
      credentials: "include",
      headers: {
        "X-CSRF-Token": csrfToken(),
        Accept: "application/json",
      },
    }).then(response => response.json()).then((data) => {
      if (data.inserted_item) {
        document.querySelector('.status-line').innerHTML = data.inserted_item;
      }
    });
  }
}
