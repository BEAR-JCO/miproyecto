/* globals Chart:false, feather:false */

(function () {
    'use strict'
  
    feather.replace({ 'aria-hidden': 'true' })
  
    // Graphs
    var ctx = document.getElementById('grafico')
    // eslint-disable-next-line no-unused-vars
    var grafico = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: [
          'Semana 1',
          'Semana 2',
          'Semana 3'
        ],
        datasets: [{
          data: [
            19,
            5,
            13
          ],
          lineTension: 0,
          backgroundColor: 'transparent',
          borderColor: '#ff0080',
          borderWidth: 4,
          pointBackgroundColor: '#ff0080'
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: false
            }
          }]
        },
        legend: {
          display: false
        }
      }
    })
  })()