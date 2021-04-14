(function(){
	(".accordion li a").on("click", function() {
		(this).next().slideToggle();	
		// activeが存在する場合
		if ((this).children(".accordion_icon").hasClass('active')) {			
			// activeを削除
			(this).children(".accordion_icon").removeClass('active');				
		}
		else {
			// activeを追加
			(this).children(".accordion_icon").addClass('active');			
		}			
	});
});
