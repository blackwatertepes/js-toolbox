// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

function createChart() {
	var n = 9, // number of samples
    m = 3; // number of series
    //data = d3.range(m).map(function() { return d3.range(n).map(Math.random); });
    console.log(data);

	var w = 940,
    h = 200,
    p = [20, 50, 30, 20],
    x = d3.scale.linear().domain([0, 1]).range([h, 0]),
    y0 = d3.scale.ordinal().domain(d3.range(n)).rangeBands([0, w], .2),
    y1 = d3.scale.ordinal().domain(d3.range(m)).rangeBands([0, y0.rangeBand()]),
    y = d3.scale.linear().range([0, h - p[0] - p[2]]),
    //z = d3.scale.category10();
    z = d3.scale.ordinal().range(["#156F9E","#C47500","#9E157C"]);

	var vis = d3.select("#svg")
  .append("svg:svg")
    .attr("width", w + 20)
    .attr("height", h + 40)
  .append("svg:g")
    .attr("transform", "translate(10,10)");

	var g = vis.selectAll("g")
    .data(data)
  .enter().append("svg:g")
    .attr("fill", function(d, i) { return z(i); })
    .attr("transform", function(d, i) { return "translate(" + y1(i) + ",0)"; });

	var rect = g.selectAll("rect")
    .data(Object)
  .enter().append("svg:rect")
    .attr("transform", function(d, i) { return "translate(" + y0(i) + ",0)"; })
    .attr("width", y1.rangeBand())
    .attr("height", x)
    .attr("y", function(d) { return h - x(d); });
	
	var text = vis.selectAll("text")
    .data(d3.range(n))
  .enter().append("svg:a")
    .attr("xlink:href", function(d,i) { return info.urls[i] })
  .append("svg:text")
    .attr("class", "group")
    .attr("transform", function(d, i) { return "translate(" + y0(i) + ",0)"; })
    .attr("x", y0.rangeBand() / 2)
    .attr("y", h + 6)
    .attr("dy", ".71em")
    .attr("text-anchor", "middle")
    .attr("fill", "black")
    .text(function(d, i) { return info.labels[i].replace('.js', ''); });
}