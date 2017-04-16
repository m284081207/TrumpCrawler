layer.ready(function(){ 
  layer.tips('Choose CNN or Twitter', '#chooseCNN', {
  tips: 3, time:1500
});
});

function chooseCNN(){
	//change colors of 'chooseFrom'
	var div1=document.getElementById("chooseTwitter");
	div1.style.borderColor="#DDD";
	div1.style.color="#DDD";
	var div2=document.getElementById("chooseCNN");
	div2.style.borderColor="#000";
	div2.style.color="#000";
	//change content the page shows
	var div3=document.getElementById("CNN");
	div3.style.display="block";
	var div4=document.getElementById("Twitter");
	div4.style.display="none";
};

function chooseTwitter(){
	var div1=document.getElementById("chooseCNN");
	div1.style.borderColor="#DDD";
	div1.style.color="#DDD";
	var div2=document.getElementById("chooseTwitter");
	div2.style.borderColor="#000";
	div2.style.color="#000";
	var div3=document.getElementById("Twitter");
	div3.style.display="block";
	var div4=document.getElementById("CNN");
	div4.style.display="none";
};

function viewContent(content){  
	layer.open({
	  title: "View Content",
	  type: 1,
	  skin: 'layui-layer-rim', 
	  area: ['800px', '500px'], 
	  content: content,
	});
};

function sourcePage(url){
	layer.open({
    type: 2,
    title: 'Source Page',
    maxmin: true,
    area: ['800px', '500px'],
    content: url,
  });
};