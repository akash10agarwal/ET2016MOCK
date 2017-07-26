/*
 * [y] hybris Platform
 *
 * Copyright (c) 2000-2016 SAP SE or an SAP affiliate company.
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of SAP
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with SAP.
 */
//################################################################
//#### Autoload
//################################################################
// 
// ACC.sample={
// 	_autoload: [
// 		"samplefunction",
// 		["somefunction", "some expression to test"]
// 		["somefunction","some expression to test","elsefunction"]
// 	],

// 	samplefunction:function(){
// 		//... do some suff here, executed every time ...
// 	},

// 	somefunction:function(){
// 		//... do some suff here. if expression match ...
// 	},

// 	elsefunction:function(){
// 		//... do some suff here. if expression NOT match ...
// 	}

// }

//  // sample expression: $(".js-storefinder-map").length != 0


function _autoload(){
	$.each(ACC,function(section,obj){
		if($.isArray(obj._autoload)){
			$.each(obj._autoload,function(key,value){
				if($.isArray(value)){
					if(value[1]){
						ACC[section][value[0]]();
					}else{
						if(value[2]){
							ACC[section][value[2]]()
						}
					}
				}else{
					ACC[section][value]();
				}
			})
		}
	})
}

$(function(){
	_autoload();
});