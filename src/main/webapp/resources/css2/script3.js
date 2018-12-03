
var wysokosc =  [4000,3900,3800,3700,3600,3500,3400,3300,3200,3100,3000,
	2900,2800,2700,2600,2500,2400,2300,2200,2100,2000,
	1900,1800,1700,1600,1500,1400,1300,1200,1100,1000,
	900,800,700,600,500,400,300,200,100];
var i;
for(i=0; i<30; i++){
	var temper =[i];
}


var temp = [-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
	19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35];   
var temp2 = [0.65,1.30,1.95,2.60,3.25,3.90,4.55,5.20,5.85,6.50, 
	7.15,7.80,8.45,9.10,9.75,10.40,11.05,11.70,12.35,
	13.00,13.65,14.30,14.95,15.60,16.25,16.90,17.55,18.20,
	18.85,19.50,20.15,20.80,21.45,
	22.10,22.75,23.40,24.05,24.70,25.35,26.00];



var ctx = document.getElementById("myChart");
var myChart = new Chart(ctx, {
  type: 'line',
  
  data: {
    labels: temp,
    label: "temperatura",
    datasets: [
    { 
  data: wysokosc,
  label: "wysokosc",
  borderColor: "#3e95cd",
  fill: true},
  
  { labels: temp2,
	  data: wysokosc,
	  label: "temperatura",
	  borderColor: "#8e5ea2",
	  fill: false
	},
]},


options: {
	
	 layout: {
         padding: {
             left: 0,
             right: 0,
             top: 0,
             bottom: 0
         }
     },
	title: {
        display: true,
        text: 'zaleznosc wilgotnosci i temperatury na wysokosc podstawy chmur'
      }, scales: {
        yAxes: [{ 
          scaleLabel: {
            display: true,
            ticks: {
                beginAtZero:true
            },
            labelString: "wysokosc"
            	
          }
        }],
        xAxes: [{ 
          scaleLabel: {
            display: true,
            ticks: {
                beginAtZero:true
            },
            labelString: "temperatura",
            	beginAtZero:true,
          }
        }]
      }
      
}

});