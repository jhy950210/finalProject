var eventModal = $('#eventModal');

var modalTitle = $('.modal-title');
var editAllDay = $('#edit-allDay');
var editTitle = $('#edit-title');
var editStart = $('#edit-start');
var editEnd = $('#edit-end');
var editCheck = $('#edit-check');
var editCustomer1 = $('#edit-customer1');
var editCustomer2 = $('#edit-customer2');
var editCustomer3 = $('#edit-customer3');
var editCustomer = $('#edit-customer');
var editType1 = $('#edit-type1');
var editType2 = $('#edit-type2');
var editType3 = $('#edit-type3');
var editType4 = $('#edit-type4');
var editColor = $('#edit-color');
var editDesc = $('#edit-desc');

var addBtnContainer = $('.modalBtnContainer-addEvent');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');


/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, end, eventType) {

	$('#edit-customer2').attr('disabled',false);
	
    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle.html('새로운 일정');
    editType1.val(eventType).prop('selected', true);
    editTitle.val('');
    editStart.val(start);
    editEnd.val(end);
    editDesc.val('');
    
    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');


    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {
        var eventData = {
            start: editStart.val(),
            end: editEnd.val(),
            backgroundColor: editColor.val(),
            textColor: '#ffffff',
            allDay: 0,
			pseqS: 1,
            customerTel: editCustomer1.val(),
			customerName: editCustomer2.val(),
			customerState: editCustomer3.val(),
            context: editDesc.val(),
            scheduleType: editType1.val(),
			progress: editType2.val(),
			bType: editType3.val(),
			contractType: editType4.val()
        };

		if (eventData.customerTel === '') {
            alert('연락처는 필수입니다.');
            return false;
        }

        if (eventData.customerName === '') {
            alert('고객명은 필수입니다.');
            return false;
        }

        if (eventData.start > eventData.end) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.scheduleType === '') {
            alert('일정명은 필수입니다.');
            return false;
        }

        var realEndDay;

        if (editAllDay.is(':checked')) {
            eventData.start = moment(eventData.start).format('YYYY-MM-DD');
            //render시 날짜표기수정
            eventData.end = moment(eventData.end).format('YYYY-MM-DD');
            //DB에 넣을때(선택)
            realEndDay = moment(eventData.end).format('YYYY-MM-DD');

            eventData.allDay = 1;
        }

        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        editAllDay.prop('checked', false);
        eventModal.modal('hide');

        //새로운 일정 저장
        $.ajax({
            type: "post",
            url: "./addSchedule.do",
            data: {
                pseqS: eventData.pseqS,
				customerTel: eventData.customerTel,
				customerName: eventData.customerName,
				customerState: eventData.customerState,
	            start: eventData.start,
	            end: eventData.end,
	            context: eventData.context,
	            scheduleType: eventData.scheduleType,
				progress: eventData.progress,
				bType: eventData.bType,
				contractType: eventData.contractType,
				backgroundColor: eventData.backgroundColor,
				textColor: eventData.textColor,
				allDay: eventData.allDay
            },
            success: function (response) {
				alert('성공');
                //DB연동시 중복이벤트 방지를 위한
                $('#calendar').fullCalendar('removeEvents');
                $('#calendar').fullCalendar('refetchEvents');
            }
        });
    });
};