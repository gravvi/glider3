var temp =  [-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
	19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]; 
var wysokosc = [4000,3900,3800,3700,3600,3500,3400,3300,3200,3100,3000,
	2900,2800,2700,2600,2500,2400,2300,2200,2100,2000,
	1900,1800,1700,1600,1500,1400,1300,1200,1100,1000,
	900,800,700,600,500,400,300,200,100];



var ctx = document.getElementById("myChart");
var myChart = new Chart(ctx, {
  type: 'line',
  
  data: {
    labels: temp,
    
    datasets: [
    { 
  data: wysokosc,
    	
  label: "wysokosc",
  borderColor: "#3e95cd",
  fill: true

},

{ labels: wysokosc,
  data: temp,
  label: "temperatura",
  borderColor: "#8e5ea2",
  fill: false
},

    ]
  }



});
new Chart(document.getElementById("bubble-chart"), {
    type: 'bubble',
    data: {
      labels: "windy",
      datasets: [
       
    	  {
          label: ["wiatr m/s"],
          backgroundColor: "rgba(255,221,50,0.2)",
          borderColor: "rgba(255,221,50,1)",
          data: [{
            x: 25,
            y: 4,
            r: 40
          }]
        }, {
          label: ["gradient temp"],
          backgroundColor: "rgba(60,186,159,0.2)",
          borderColor: "rgba(60,186,159,1)",
          data: [{
            x: 2,
            y: 7.6,
            r: 10
          }]
        },  
        
        {
          label: ["termika"],
          backgroundColor: "rgba(0,0,0,0.2)",
          borderColor: "#000",
          data: [{
            x: 3,
            y: 6,
            r: 15
          }]
        }, 
        
        {
            label: ["Polska"],
            backgroundColor: "rgba(0,0,0,0.0)",
            borderColor: "0000",
            data: [{
              x: 0,
              y: 0,
              r: 0
            }]
          },
        
        {
          label: ["zachmurzenie"],
          backgroundColor: "rgba(193,46,12,0.2)",
          borderColor: "rgba(193,46,12,1)",
          data: [{
            x: 20,
            y: 5,
            r: 100
          }]
        }
        
        
      ]
    },
    
    
    options: {
      title: {
        display: true,
        text: 'zaleznosc wilgotnosci i temperatury na wysokosc podstawy chmur'
      }, scales: {
        yAxes: [{ 
          scaleLabel: {
            display: true,
            labelString: "wysokosc"
          }
        }],
        xAxes: [{ 
          scaleLabel: {
            display: true,
            labelString: "wilgotnosc"
          }
        }]
      }
    }
});