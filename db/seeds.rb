Category.delete_all
Library.delete_all
Status.delete_all

cat_framework = Category.create(name: 'frameworks', full_name: 'Frameworks (front-end)')

[ {github_id: 952189, author: 'documentcloud', name: 'backbone', 
    description: "Give your JS App some Backbone with Models, Views, Collections, and Events",
    website_url: "http://backbonejs.org",
    doc_url: "http://backbonejs.org"}, 
  {github_id: 1801829, author: 'emberjs', name: 'ember.js',
    description: "Ember.js - A JavaScript framework for creating ambitious web applications",
    website_url: "http://www.emberjs.com",
    doc_url: "http://emberjs.com/guides/"},
  {github_id: 757363, author: 'stevesanderson', name: 'knockout',
    description: "Knockout makes it easier to create rich, responsive UIs with JavaScript",
    website_url: "http://knockoutjs.com",
    doc_url: "http://knockoutjs.com/documentation/introduction.html"},
  {github_id: 460078, author: 'angular', name: 'angular.js',
    description: "",
    website_url: "http://angularjs.org",
    doc_url: "http://docs.angularjs.org/guide/"},
  {github_id: 1540246, author: 'spine', name: 'spine',
    description: "Lightweight MVC library for building JavaScript applications",
    website_url: "http://spinejs.com",
    doc_url: "http://spinejs.com/docs"},
  {github_id: 85670, author: 'yui', name: 'yui3',
    description: "YUI 3.x Source Tree",
    website_url: "http://yuilibrary.com",
    doc_url: "http://yuilibrary.com/yui/docs/"},
  {github_id: 1931485, author: 'arturadib', name: 'agility',
    description: "Javascript MVC for the \"write less, do more\" programmer",
    website_url: "http://agilityjs.com",
    doc_url: "http://agilityjs.com/docs/docs.html"},
  {github_id: 233888, author: 'dojo', name: 'dojo',
    description: "The official read-only mirror of Dojo Core.",
    website_url: "http://dojotoolkit.org",
    doc_url: "http://dojotoolkit.org/documentation/"},
  {github_id: 77544, author: 'thatcher', name: 'jquery-claypool',
    description: "Claypool is a small, fast, railable Javascript Application Framework  , built on jQuery that provides all the usual important patterns for large, long-lived client-side apps, server-side apps, or something strangely, beautifully in the middle.",
    website_url: "http://claypooljs.com",
    doc_url: "http://docs.jquery.com/Plugins/Claypool"}].each do |library|
    Library.create(library.merge({category_id: cat_framework.id}))
  end

cat_utility = Category.create(name: 'utilities', full_name: 'Utilities')

[ {github_id: 349241, author: 'documentcloud', name: 'underscore',
    description: "JavaScript's utility _ belt",
    website_url: "http://underscorejs.org",
    doc_url: "http://underscorejs.org"},
  {github_id: 3955647, author: 'bestiejs', name: 'lodash',
    description: "A low-level utility library delivering consistency, customization, performance, and extra features.",
    website_url: "http://lodash.com",
    doc_url: "http://lodash.com"}].each do |library|
  Library.create(library.merge({category_id: cat_utility.id}))
end

cat_full = Category.create(name: 'frameworks_full', full_name: 'Frameworks (full-stack)')

[ {github_id: 3214406, author: 'meteor', name: 'meteor',
    description: "Meteor, an ultra-simple, database-everywhere, data-on-the-wire, pure-Javascript web framework.",
    website_url: "http://meteor.com",
    doc_url: "http://docs.meteor.com"},
  {github_id: 1590408, author: 'codeparty', name: 'derby',
    description: "MVC framework making it easy to write realtime, collaborative applications that run in both Node.js and browsers",
    website_url: "http://derbyjs.com",
    doc_url: "http://derbyjs.com"}].each do |library|
  Library.create(library.merge({category_id: cat_full.id}))
end

cat_toolkit = Category.create(name: 'toolkits', full_name: 'Toolkits')

[ {github_id: 167174, author: 'jquery', name: 'jquery',
    description: "jQuery JavaScript Library",
    website_url: "http://jquery.com",
    doc_url: "http://api.jquery.com/"},
  {github_id: 11573, author: 'mootools', name: 'mootools-core',
      description: "MooTools Core Repository",
      website_url: "http://mootools.net",
      doc_url: "http://mootools.net/docs/core"},
  {github_id: 5494, author: 'sstephenson', name: 'prototype',
      description: "Prototype JavaScript framework",
      website_url: "http://prototypejs.org",
      doc_url: "http://prototypejs.org/learn"},
  {github_id: 85670, author: 'yui', name: 'yui3',
    description: "YUI 3.x Source Tree",
    website_url: "http://yuilibrary.com",
    doc_url: "http://yuilibrary.com/yui/docs/"},
  {github_id: 233888, author: 'dojo', name: 'dojo',
    description: "The official read-only mirror of Dojo Core.",
    website_url: "http://dojotoolkit.org",
    doc_url: "http://dojotoolkit.org/documentation/"}].each do |library|
  Library.create(library.merge({category_id: cat_toolkit.id}))
end

cat_form = Category.create(name: 'form_validation', full_name: 'Form Validation')

[ {github_id: 276963, author: 'posabsolute', name: 'jQuery-Validation-Engine',
    description: "jQuery form validation plugin",
    website_url: "http://www.position-absolute.com/articles/jquery-form-validator-because-form-validation-is-a-mess",
    doc_url: "http://www.position-absolute.com/articles/jquery-form-validator-because-form-validation-is-a-mess"},
  {github_id: 7191565, author: 'guillaumepotier', name: 'Parsley.js',
      description: "Validate your forms, frontend, without writting a single line of javascript!",
      website_url: "http://parsleyjs.org",
      doc_url: "http://parsleyjs.org/documentation.html"},
  {github_id: 2574361, author: 'rickharrison', name: 'validate.js',
      description: "Lightweight JavaScript form validation library inspired by CodeIgniter.",
      website_url: "http://rickharrison.github.io/validate.js",
      doc_url: "http://rickharrison.github.io/validate.js"}].each do |library|
  Library.create(library.merge({category_id: cat_form.id}))
end

cat_chart = Category.create(name: 'charting', full_name: 'Charting')

[ {github_id: 8843683, author: 'nnnick', name: 'Chart.js',
    description: "Simple HTML5 Charts using the <canvas> tag",
    website_url: "",
    doc_url: ""},
  {github_id: 230249, author: 'DmitryBaranovskiy', name: 'g.raphael',
      description: "Charts for Raphael",
      website_url: "http://g.raphaeljs.com",
      doc_url: "http://g.raphaeljs.com/reference.html"},
  {github_id: 1295612, author: 'flot', name: 'flot',
      description: "Attractive JavaScript charts for jQuery",
      website_url: "http://flotcharts.org",
      doc_url: "https://github.com/flot/flot/blob/master/API.md"},
  {github_id: 715547, author: 'highslide-software', name: 'highcharts.com',
      description: "Highcharts JS, the JavaScript charting framework",
      website_url: "http://highcharts.com",
      doc_url: "http://docs.highcharts.com/"},
  {github_id: 379530, author: 'benpickles', name: 'peity',
      description: "Progressive <canvas> bar, line and pie charts",
      website_url: "http://benpickles.github.io/peity",
      doc_url: "http://benpickles.github.io/peity"},
  {github_id: 7008068, author: 'tenXer', name: 'xcharts',
      description: "A D3-based library for building custom charts and graphs.",
      website_url: "http://tenxer.github.com/xcharts",
      doc_url: "http://tenxer.github.io/xcharts/docs"},
  {github_id: 943149, author: 'mbostock', name: 'd3',
      description: " JavaScript visualization library for HTML and SVG.",
      website_url: "http://d3js.org",
      doc_url: "https://github.com/mbostock/d3/wiki"}].each do |library|
  Library.create(library.merge({category_id: cat_chart.id}))
end