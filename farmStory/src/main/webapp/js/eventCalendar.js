document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
	  locale : "ko",
      timeZone: 'UTC',
	  dayCellContent: function (arg) {
	      const { date } = arg;
	      return date.getDate();
	  },
      events: [
          {
	          title: '신정',
	          start: '2025-01-01',
			  backgroundColor: 'crimson',
  		      borderColor: 'crimson'
          },
          {
	          title: '설날',
	          start: '2025-01-28',
			  end: '2025-01-30',
          },
          {
	          title: '프로젝트 준비',
	          start: '2025-02-07',
	          url: 'https://github.com/Jinwoooooooo/GCA_TeamProject1'
          },
		  {
		      title: '삼일절',
		      start: '2025-03-01',
		      backgroundColor: 'crimson',
		      borderColor: 'crimson'
	      },
		  {
	          title: '대체공휴일',
	          start: '2025-03-03',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
          {
	          title: '프로젝트 시작',
	          start: '2025-03-04',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
          },
		  {
	          title: '어린이날',
	          start: '2025-05-05',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '부처님오신날',
	          start: '2025-05-05',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '대체공휴일',
	          start: '2025-05-06',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '현충일',
	          start: '2025-06-06',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '광복절',
	          start: '2025-08-15',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '개천절',
	          start: '2025-10-03',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '추석 연휴',
	          start: '2025-10-05',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '추석',
	          start: '2025-10-06',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '추석 연휴',
	          start: '2025-10-07',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '대체 공휴일',
	          start: '2025-10-08',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '한글날',
	          start: '2025-10-09',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
		  {
	          title: '성탄절',
	          start: '2025-12-25',
	          backgroundColor: 'crimson',
	          borderColor: 'crimson'
		  },
      ]
    });
    calendar.render();
});