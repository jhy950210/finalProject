var eventModal = $('#eventModal');

var modalTitle = $('.modal-title');
var editCheck = $('#edit-check');
var editCustomer1 = $('#edit-customer1');
var editCustomer2 = $('#edit-customer2');
var editCustomer3 = $('#edit-customer3');
var editStart = $('#edit-start');
//var editCustomer = $('#edit-customer');
//var editEnd = $('#edit-end');
var editType1 = $('#edit-type1');
var editType2 = $('#edit-type2');
var editType3 = $('#edit-type3');
var editType4 = $('#edit-type4');
//var editColor = $('#edit-color');
var editDesc = $('#edit-desc');

var addBtnContainer = $('.modalBtnContainer-addEvent');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');


/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, eventType1, eventType2, eventType3, eventType4) {

    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle.html('새로운 일정');
   
    editCustomer1.val('');
    editStart.val(start);
  
    editDesc.val('');
    
    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');

    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {

        var eventData = {
            pseqS: eventId,
            customerTel: editCustomer1.val(),
			customerName: editCustomer2.val(),
			customerState: editCustomer3.val(),
            date: editStart.val(),
           
            context: editDesc.val(),
            scheduleType: editType1.val(),
			progress: editType2.val(),
			btype: editType3.val(),
			contractType: editType4.val(),
			check: editCheck.val()
            
        };

		if (eventData.customerTel === '') {
            alert('연락처는 필수입니다.');
            return false;
        }

        if (eventData.customerName === '') {
            alert('고객명은 필수입니다.');
            return false;
        }

        var realEndDay;

        if (editCheck.is(':checked')) {
           
            eventData.check = true;
        }

        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        editCheck.prop('checked', false);
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
	            date: eventData.date,
	           
	            context: eventData.context,
	            scheduleType: eventData.scheduleType,
				progress: eventData.progress,
				btype: eventData.btype,
				contractType: eventData.contractType
            },
            success: function (response) {
				alert('성공');
                //DB연동시 중복이벤트 방지를 위한
                //$('#calendar').fullCalendar('removeEvents');
                //$('#calendar').fullCalendar('refetchEvents');
            }
        });
    });
};