   var tab ;
    var i;
        for (i=0; i<7; i++){
        	var tab2 = [i]
        	
        }
        var z = i;
var ctx = document.getElementById("myChart");
var scatterChart = new Chart(ctx, {
    type: 'scatter',
    data: {
        datasets: [{
            label: 'Scatter Dataset',
            borderColor: "#8e5ea2",
           
            data: [{x: z,y: 0},
            	{x:z,    y:5}, 
            	{x: tab, y:9}, 
            	{x: tab, y:5}]
            
        }]
    },
    options: {
        scales: {
            xAxes: [{
                type: 'linear',
                position: 'bottom'
            }]
        }
    }
});