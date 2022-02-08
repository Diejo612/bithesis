import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ["completed"];

  connect() {
    console.log(this.checkboxTarget)
  }



  update_status() {
    console.log('Esto funciona?')
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
  }
}
