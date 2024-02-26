console.log("Hello from new_record.js");

document.addEventListener("DOMContentLoaded", function() {
    var startTimeField = document.getElementById("start-time-field");
    var endTimeField = document.getElementById("end-time-field");
    var dayField = document.getElementById("day-field");
    var totalTextField = document.getElementById("total-time-field");
    var startButton = document.getElementById("start-button");
    var endButton = document.getElementById("end-button");
  
    startButton.addEventListener("click", function() {
      var currentTime = new Date();
      console.log(currentTime);
      startTimeField.value = currentTime.toISOString(); // ISO形式で保存
      dayField.value = currentTime.toISOString().split('T')[0]; // 日付部分のみ保存
      startButton.disabled = true;
      endButton.disabled = false;
    });
  
    endButton.addEventListener("click", function() {
      var currentTime = new Date();
      endTimeField.value = currentTime.toISOString(); // ISO形式で保存
  
      var startTime = new Date(startTimeField.value);
      var endTime = new Date(endTimeField.value);
      var totalTime = (endTime - startTime) / 60; // 経過時間（分）
      totalTextField.value = totalTime.toFixed(2); // 経過時間を表示
      endButton.disabled = true;
    });
  });
  