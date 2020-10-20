/* ****************
 *  일정 편집
 * ************** */
var editEvent = function (event, element, view) {
	

    $('#deleteEvent').data('id', event.seqS); //클릭한 이벤트 ID
	
	$('#edit-customer2').attr('disabled',true);
    $('.popover.fade.top').remove();
    $(element).popover("hide");

    if (event.allDay === true) {
        editAllDay.prop('checked', true);
    } else {
        editAllDay.prop('checked', false);
    }

    if (event.end === null) {
        event.end = event.start;
    }

    if (event.allDay === true && event.end !== event.start) {
        editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD HH:mm'))
    } else {
        editEnd.val(event.end.format('YYYY-MM-DD HH:mm'));
    }

    modalTitle.html('일정 수정');
    editStart.val(event.start.format('YYYY-MM-DD HH:mm'));
    editType1.val(event.title);
    editType2.val(event.progress);
    editType3.val(event.bType);
    editType4.val(event.contractType);
	editCustomer1.val(event.customerTel);
	editCustomer2.val(event.customerName);
	editCustomer3.val(event.customerState);
    editDesc.val(event.context);
    editColor.val(event.backgroundColor).css('color', event.backgroundColor);

    addBtnContainer.hide();
    modifyBtnContainer.show();
    eventModal.modal('show');

    //업데이트 버튼 클릭시
    $('#updateEvent').unbind();
    $('#updateEvent').on('click', function () {

        if (editStart.val() > editEnd.val()) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (editTitle.val() === '') {
            alert('일정명은 필수입니다.')
            return false;
        }

        var statusAllDay;
        var startDate;
        var endDate;
        var displayDate;

        if (editAllDay.is(':checked')) {
            statusAllDay = true;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate = moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
        } else {
            statusAllDay = false;
            startDate = editStart.val();
            endDate = editEnd.val();
            displayDate = endDate;
        }

        eventModal.modal('hide');
        event.allDay = statusAllDay;
        event.scheduleType = editType1.val();
        event.start = startDate;
        event.end = displayDate;
        event.customerTel = editCustomer1.val();
        event.customerName = editCustomer2.val();
        event.customerState = editCustomer3.val();
        event.progress = editType2.val();
        event.bType = editType3.val();
        event.contractType = editType4.val();
        event.backgroundColor = editColor.val();
        event.context = editDesc.val();

        $("#calendar").fullCalendar('updateEvent', event);

        //일정 업데이트
        $.ajax({
            type: "post",
            url: "./updateSchedule.action",
            data: {
				seqS: event.seqS,
                start: startDate,
	            end: displayDate,
	            backgroundColor: editColor.val(),
	            textColor: '#ffffff',
	            allDay: statusAllDay,
	            customerTel: editCustomer1.val(),
				customerName: editCustomer2.val(),
				customerState: editCustomer3.val(),
	            context: editDesc.val(),
	            scheduleType: editType1.val(),
				progress: editType2.val(),
				bType: editType3.val(),
				contractType: editType4.val()
            },
            success: function (response) {
                alert('수정되었습니다.')
            }
        });

    });

	// 삭제버튼
	$('#deleteEvent').on('click', function () {
	    $('#deleteEvent').unbind();
	    $("#calendar").fullCalendar('removeEvents', $(this).data('id'));
	    eventModal.modal('hide');
	
	    //삭제시
	    $.ajax({
	        type: "post",
	        url: "./deleteSchedule.action",
	        data: {
	            seqS: event.seqS
	        },
	        success: function (response) {
	            alert('삭제되었습니다.');
                $('#calendar').fullCalendar('removeEvents');
                $('#calendar').fullCalendar('refetchEvents');
	        }
	    });
	
	});
};

