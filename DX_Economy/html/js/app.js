
// Partial Functions
function closeMain() {
	$("body").css("display", "none");
}
function openMain() {
	$("body").css("display", "block");

}
function closeAll() {
	$(".body").css("display", "none");
}

$(".close").click(function(){
    $.post('http://DX_Economy/quit', JSON.stringify({}));
});

var prices = {}
var maxes = {}
var prices2 = {}
var maxes2 = {}
var prices3 = {}
var maxes3 = {}
var pricetest = {}
var counttest = {}
var identifier = null
var typemoney = null
var typeitem = null
var typeitem2 = null
var ID = null


$(document).ready(function () {

    $("body").on("keyup", function (key) {
        if (Config.closeKeys.includes(key.which)) {
            closeUI();
        }
    });
  
});
function closeUI() {
   $.post('http://DX_Economy/quit', JSON.stringify({}));
}

window.addEventListener('message', function (event) {

	var item = event.data;

	// Open & Close main window
	if (item.message == "show") {
		if (item.clear == true){
			$( ".home" ).empty();
			prices = {}
		}
		openMain();
	}

	if (item.message == "hide") {
		closeMain();
	}
	
	if (item.message == "add"){
	if (item.randomprice == true){
		if (item.typemoney == true) {

		$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="green-text text-darken-2">เงินเขียว</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
			'<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.pricemin+' ~ '+item.pricemax+'  </span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
		}
		else{
			$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="red-text text-darken-2">เงินแดง</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
			'<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.pricemin+' ~ '+item.pricemax+'  </span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
			
		}
		
	}
	else {
	if (item.typemoney == true) {
	if (item.pricedif > 0){
		$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="green-text text-darken-2">เงินเขียว</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
          '<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.price+'</span> <span style="color:green;" class="right-label green-text"> ▲ +'+item.pricedif+'</span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
	}
	else if (item.pricedif < 0){
		$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="green-text text-darken-2">เงินเขียว</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
          '<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.price+'</span> <span style="color:red;" class="right-label red-text"> ▼ '+item.pricedif+'</span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
	}
	else {
		$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="green-text text-darken-2">เงินเขียว</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
			'<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.price+'</span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
	}
		
	}
	else
	{
		if (item.pricedif > 0){
		$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="red-text text-darken-2">เงินแดง</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
          '<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.price+'</span> <span style="color:green;" class="right-label green-text"> ▲ +'+item.pricedif+'</span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
	}
	else if (item.pricedif < 0){
		$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="red-text text-darken-2">เงินแดง</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
          '<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.price+'</span> <span style="color:red;" class="right-label red-text"> ▼ '+item.pricedif+'</span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
	}
	else {
		$( ".home" ).append(
		
		'<div class="col s12 m4">'+
    '<div class="card horizontal indigo lighten-5">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="red-text text-darken-2">เงินแดง</span></div></p>'+
        '</div>'+
        '<div class="card-action">'+
			'<a href="#"><span class="blue-text text-darken-2">                  ราคา : '+item.price+'</span></a>'+
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
	}
		
	}
	}
	
	}
	
	
	if (item.message == "sell"){
		if (item.randomprice == true){
		if (item.typemoney == true) {
		$( ".home" ).append(

		'<div class="col s12 m4">'+
    '<div class="card horizontal">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="typeprice green-text text-darken-2">เงินเขียว</span></div></p>'+
		 '<div class="typerandom">'+item.randomprice+'</div>'+
		 '<div class="nameitem">'+item.item+'</div>'+
        '</div>'+
        '<div class="card-action">'+
			'ราคา : <span class="price blue-text text-darken-2">'+item.pricemin+' ~ '+item.pricemax+'  / 1 ชิ้น</span>'+
			'    <button class="btn" style="width:80px;height:50px;">ขาย</button><br>'+
			'มีจำนวน : <span class="count purple-text text-lighten-2">'+item.max+' ชิ้น</span><br>'+
			'ทั้งหมด : <span class="green-text text-darken-2">'+item.pricemin*item.max+' ~ '+item.pricemax*item.max+'$</span>'+
    
  
			
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
			
		}
		else
		{
				$( ".home" ).append(

		'<div class="col s12 m4">'+
    '<div class="card horizontal">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="typeprice red-text text-darken-2">เงินแดง</span></div></p>'+
		  '<div class="typerandom">'+item.randomprice+'</div>'+
		  '<div class="nameitem">'+item.item+'</div>'+
        '</div>'+
        '<div class="card-action">'+
			'ราคา : <span class="price blue-text text-darken-2">'+item.pricemin+' ~ '+item.pricemax+'  / 1 ชิ้น</span>'+
			'    <button class="btn" style="width:80px;height:50px;">ขาย</button><br>'+
			'มีจำนวน : <span class="count purple-text text-lighten-2">'+item.max+' ชิ้น</span><br>'+
			'ทั้งหมด : <span class="red-text text-darken-2">'+item.pricemin*item.max+' ~ '+item.pricemax*item.max+'$</span>'+
    
  
			
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
				
		}
		
		
		
		}
		else
		{
			if (item.typemoney == true) {
			$( ".home" ).append(

		'<div class="col s12 m4">'+
    '<div class="card horizontal">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="typeprice green-text text-darken-2">เงินเขียว</span></div></p>'+
		  '<div class="typerandom">'+item.randomprice+'</div>'+
		  '<div class="nameitem">'+item.item+'</div>'+
        '</div>'+
        '<div class="card-action">'+
			'ราคา : <span class="price blue-text text-darken-2">'+item.price+' / 1 ชิ้น</span>'+
			'    <button class="btn" style="width:80px;height:50px;">ขาย</button><br>'+
			'มีจำนวน : <span class="count purple-text text-lighten-2">'+item.max+' ชิ้น</span><br>'+
			'ทั้งหมด : <span class="green-text text-darken-2">'+item.max*item.price+' $</span>'+
    
  
			
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
			
			
			
		}
		else
		{
		
		
	$( ".home" ).append(
	
		'<div class="col s12 m4">'+
    '<div class="card horizontal">'+
      '<div class="card-image">'+
        '<img src="nui://esx_inventoryhud/html/img/items/' + item.item + '.png" style="width:96px;height:96px;"></div>' + 
      '<div class="card-stacked">'+
        '<div class="card-content">'+
         '<p><div class="center-align">ชื่อไอเท็ม : <span class="orange-text text-darken-2">'+item.label+'</span></div></p>'+
		 '<p><div class="center-align">ประเภท : <span class="typeprice red-text text-darken-2">เงินแดง</span></div></p>'+
		  '<div class="typerandom">'+item.randomprice+'</div>'+
		  '<div class="nameitem">'+item.item+'</div>'+
        '</div>'+
        '<div class="card-action">'+
			'ราคา : <span class="price blue-text text-darken-2">'+item.price+' / 1 ชิ้น</span>'+
			'    <button class="btn" style="width:80px;height:50px;">ขาย</button><br>'+
			'มีจำนวน : <span class="purple-text text-lighten-2"><div class="count">'+item.max+' ชิ้น</div></span><br>'+
			'ทั้งหมด : <span class="red-text text-darken-2">'+item.max*item.price+' $</span>'+
    
  
			
        '</div>'+
      '</div>'+
    '</div>'+
  '</div>'
		);
		
		
		}
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
	}
	
});

$(".home").on("click", ".btn", function() {
	var $button = $(this);
	var $name = $button.attr('name')
	var $count = parseFloat($button.parent().parent().find(".count").text());
	var $price = parseFloat($button.parent().parent().find(".price").text());
	var $typeprice = String($button.parent().parent().find(".typeprice").text());
	var $typerandom = String($button.parent().parent().find(".typerandom").text());
	var $nameitem = String($button.parent().parent().find(".nameitem").text());


	$.post('http://DX_Economy/sellitem', JSON.stringify({
		count: $count,
		price: $price,
		typeprice: $typeprice,
		typerandom: $typerandom,
		nameitem: $nameitem

	
		
	}));
});


