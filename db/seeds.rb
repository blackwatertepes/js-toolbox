cat = Category.create(name: 'canvas', full_name: 'Canvas')

[ {github_id: 712530, author: 'kangax', name: 'fabric.js',
    description: "Javascript Canvas Library, SVG-to-Canvas (& canvas-to-SVG) Parser",
    website_url: "http://fabricjs.com",
    doc_url: "http://fabricjs.com/docs/"},
  {github_id: 1280658, author: 'CreateJS', name: 'EaselJS',
      description: "The Easel Javascript library provides a full, hierarchical display list, a core interaction model, and helper classes to make working with the HTML5 Canvas element much easier. Join the google group at http://groups.google.com/group/easeljs for discussion.",
      website_url: "http://createjs.com",
      doc_url: "http://createjs.com/Docs/EaselJS/modules/EaselJS.html"},
  {github_id: 969055, author: 'rsandor', name: 'gury',
      description: "A jQuery inspired canvas utility library",
      website_url: "http://guryjs.org",
      doc_url: "https://github.com/rsandor/gury/wiki/API:-Core-Gury"},
  {github_id: 1236815, author: 'theshock', name: 'libcanvas',
      description: "LibCanvas - Canvas Javascript library",
      website_url: "http://libcanvas.com/",
      doc_url: ""},
  {github_id: 179455, author: 'lamberta', name: 'doodle-js',
      description: "A JavaScript animation library for HTML5 Canvas.",
      website_url: "",
      doc_url: ""},
  {github_id: 1398013, author: 'apsavin', name: 'jCanvaScript',
      description: "HTML5 Canvas JavaScript library",
      website_url: "http://jcscript.com/",
      doc_url: "http://jcscript.com/documentation/"}].each do |library|
  Library.create(library.merge({category_id: cat.id}))
end