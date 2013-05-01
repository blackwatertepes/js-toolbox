cat = Category.create(name: 'mobile', full_name: 'Mobile')

[ {github_id: 907410, author: 'jquery', name: 'jquery-mobile',
      description: "jQuery Mobile Framework",
      website_url: "http://jquerymobile.com/",
      doc_url: "http://api.jquerymobile.com/"},
  {github_id: 1171324, author: 'h5bp', name: 'mobile-boilerplate',
        description: "A front-end template that helps you build fast, modern mobile web apps.",
        website_url: "http://mobileboilerplate.com",
        doc_url: "https://github.com/h5bp/mobile-boilerplate/blob/v4.1.0/doc/README.md"},
  {github_id: 745502, author: 'senchalabs', name: 'jQTouch',
        description: "Create powerful mobile apps with just HTML, CSS, and Zepto.js (or jQuery).",
        website_url: "http://jqtjs.com/",
        doc_url: "https://github.com/senchalabs/jQTouch/wiki"},
  {github_id: 798217, author: 'cpojer', name: 'mootools-mobile',
        description: "Makes your web applications more touching.",
        website_url: "http://cpojer.net/MooTools/mobile/Demos/",
        doc_url: "http://cpojer.net/MooTools/mobile/Demos/"}].each do |library|
  Library.create(library.merge({category_id: cat.id}))
end