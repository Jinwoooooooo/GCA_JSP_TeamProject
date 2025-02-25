document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
      timeZone: 'UTC',
      events: [
          {
          title: '프로젝트 준비',
          start: '2025-02-07',
          url: 'https://github.com/Jinwoooooooo/GCA_TeamProject1'
          },
          {
          title: '프로젝트 시작',
          start: '2025-03-04',
          backgroundColor: 'crimson',
          borderColor: 'crimson'
          },
      ]
    });
    calendar.render();
});