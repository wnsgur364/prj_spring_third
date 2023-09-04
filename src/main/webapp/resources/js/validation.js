    checkId = function(obj, message) {
        var regExp = /^[A-Za-z0-9,_-]{4,20}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
        
    checkPw = function(obj, message) {
        var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*]).{8,20}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
	
	checkPwCheck = function(obj, message) {
	    var objPassword = $("#pw");
	    var objPasswordValue = objPassword.val().trim();
	
	    if (obj.val().trim() === objPasswordValue) {
	        obj.removeClass("is-invalid");
	        return true;
	    } else {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    }
	}
	
    checkName = function(obj, message) {
        var regExp = /^[ㄱ-ㅎ가-힣]{2,20}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            
        }
    }

    checkEmail = function(obj, message) {
        var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
	
   checkPhone = function(obj, message) {
        var regExp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
    
    checkOnlyKoreanEnglishNumber  = function(obj, message) {
        var regExp = /^[ㄱ-ㅎ가-힣A-Za-z0-9]+$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }
    
    checkNull = function(obj, message) {
	    if ($.trim(obj.val()) === '') { // 공백 체크
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message); // 공백 메시지
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}
	
	checkAccount = function(obj, message) {
	    var regExp = /^[0-9]{4}-[0-9]{2}-[0-9]{4}$/;
	
	    if (regExp.test($.trim(obj.val())) == false) {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}
	
	checkRecipientAccount = function(obj, message) {
	    var regExp = /^[0-9-]+$/;
	
	    if (regExp.test($.trim(obj.val())) == false) {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}
	
	checkOnlyNum = function(obj, message) {
	    var regExp = /^[0-9]+$/;
	
	    if (regExp.test($.trim(obj.val())) == false) {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}
	
	checkAccountPw = function(obj, message) {
	    var regExp = /^[0-9]{6}/;
	
	    if (regExp.test($.trim(obj.val())) == false) {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}
	
	checkAccountPwCheck = function(obj, message) {
	    var objPassword = $("#accountPassword");
	    var objPasswordValue = objPassword.val().trim();
	
	    if (obj.val().trim() === objPasswordValue) {
	        obj.removeClass("is-invalid");
	        return true;
	    } else {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    }
	}
	
	checkSelectNull = function(obj, message) {
	    var value = $.trim(obj.val());
	
	    // Add additional condition to check for value being 0 or null
	    if (!value || value === '0' || !/^[0-9-]+$/.test(value)) {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}
	
	checkContents = function(obj, message) {
	    var regExp = /^[ㄱ-ㅎ가-힣A-Za-z0-9\s]+$/; // \s*을 추가하여 스페이스바(공백)를 허용
	
	    if (regExp.test($.trim(obj.val())) == false) {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}