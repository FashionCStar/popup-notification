class Popup {
  static html =
    '<div class="pet-popup">\
      <div class="header">\
        <div class="icon"></div>\
        <div class="title">\
          <span>#title#</span>\
        </div>\
        <div class="time">\
          <span>#time#</span>\
        </div>\
      </div>\
      <div class="content">\
        <div class="left">\
          <div class="text">\
            <h4>#text#</h4>\
          </div>\
          <div class="status">\
            <span>#status#</span>\
          </div>\
        </div>\
        <div class="right">\
          <img src="http://localhost:8080/#image#" alt="" class="image">\
        </div>\
      </div>\
    </div>';
  static popup = null;

  constructor() {}

  static show() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function () {
      var result = JSON.parse(this.responseText);
      Popup.popup = document.querySelector(".pet-popup");
      if (Popup.popup != null) Popup.popup.remove();
      var html = Popup.html
        .replace("#title#", result.title)
        .replace("#time#", get_time_diff(result.showtime))
        .replace("#text#", result.description)
        .replace("#status#", result.status)
        .replace("#image#", result.image_url);
      var temp = document.createElement("div");
      temp.innerHTML = html;
      Popup.popup = temp.firstChild;
      Popup.popup.addEventListener("click", Popup.onClick, false);
      document.querySelector("body").append(Popup.popup);
      Popup.popup.style.visibility = "visible";
      Popup.popup.style.opacity = 1;
    };
    xhttp.open("GET", "http://localhost:8080/ajax.php", true);
    xhttp.send();
  }
  static onClick() {
    if (this != null) {
      this.style.opacity = 0;
      this.addEventListener(
        "transitionend",
        function () {
          if (this != null) {
            if (this.style.visibility == "visible")
              this.style.visibility = "hidden";
          }
        },
        false
      );
    }
  }
}

function get_time_diff(datetime) {
  var datetime = new Date(Number(datetime) * 1000).getTime();
  var now = new Date().getTime();

  if (isNaN(datetime)) {
    return "";
  }

  if (datetime < now) {
    var difference = now - datetime;
  } else {
    var difference = datetime - now;
  }

  var ds = Math.floor(difference / 1000 / 60 / 60 / 24);
  difference -= ds * 1000 * 60 * 60 * 24;

  var hs = Math.floor(difference / 1000 / 60 / 60);
  difference -= hs * 1000 * 60 * 60;

  var ms = Math.floor(difference / 1000 / 60);
  difference -= ms * 1000 * 60;

  var ss = Math.floor(difference / 1000);
  var str = "";
  if (ds > 0) str += ds + "d ";
  if (hs > 0) str += hs + "h ";
  if (ms > 0) str += ms + "m ";
  if (ss > 0) str += ss + "s ";

  return str + "ago";
}
