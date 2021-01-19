function memo() {
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/comments", true);
  });
}
window.addEventListener("load", memo);