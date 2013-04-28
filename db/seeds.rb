# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category.delete_all
# Library.delete_all
# 
# cat_framework = Category.create(name: 'Frameworks')
# 
# [ {github_id: 952189, author: 'documentcloud', name: 'backbone', 
#     description: "Give your JS App some Backbone with Models, Views, Collections, and Events",
#     website_url: "http://backbonejs.org",
#     doc_url: "http://backbonejs.org"}, 
#   {github_id: 1801829, author: 'emberjs', name: 'ember.js',
#     description: "Ember.js - A JavaScript framework for creating ambitious web applications",
#     website_url: "http://www.emberjs.com",
#     doc_url: "http://emberjs.com/guides/"},
#   {github_id: 757363, author: 'stevesanderson', name: 'knockout',
#     description: "Knockout makes it easier to create rich, responsive UIs with JavaScript",
#     website_url: "http://knockoutjs.com",
#     doc_url: "http://knockoutjs.com/documentation/introduction.html"},
#   {github_id: 460078, author: 'angular', name: 'angular.js',
#     description: "",
#     website_url: "http://angularjs.org",
#     doc_url: "http://docs.angularjs.org/guide/"},
#   {github_id: 1540246, author: 'spine', name: 'spine',
#     description: "Lightweight MVC library for building JavaScript applications",
#     website_url: "http://spinejs.com",
#     doc_url: "http://spinejs.com/docs"},
#   {github_id: 85670, author: 'yui', name: 'yui3',
#     description: "YUI 3.x Source Tree",
#     website_url: "http://yuilibrary.com",
#     doc_url: "http://yuilibrary.com/yui/docs/"},
#   {github_id: 1931485, author: 'arturadib', name: 'agility',
#     description: "Javascript MVC for the \"write less, do more\" programmer",
#     website_url: "http://agilityjs.com",
#     doc_url: "http://agilityjs.com/docs/docs.html"},
#   {github_id: 233888, author: 'dojo', name: 'dojo',
#     description: "The official read-only mirror of Dojo Core.",
#     website_url: "http://dojotoolkit.org",
#     doc_url: "http://dojotoolkit.org/documentation/"},
#   {github_id: 77544, author: 'thatcher', name: 'jquery-claypool',
#     description: "Claypool is a small, fast, railable Javascript Application Framework  , built on jQuery that provides all the usual important patterns for large, long-lived client-side apps, server-side apps, or something strangely, beautifully in the middle.",
#     website_url: "http://claypooljs.com",
#     doc_url: "http://docs.jquery.com/Plugins/Claypool"}].each do |library|
#     Library.create(library.merge({category_id: cat_framework.id}))
#   end

cat_utility = Category.create(name: 'Utility')

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