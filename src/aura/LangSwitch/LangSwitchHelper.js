({
	changeLang : function(component, lang) {
		var action = component.get("c.setLang");
        action.setParams({
            lang : lang
        });
        action.setCallback(this, function(res){
            var status = res.getStatus();
            if (status == "SUCCESS"){
                console.log("sucess");
            }
        });
        $A.enqueueAction(action);
        
	}
})