cat = Category.create(name: 'testing', full_name: 'Testing')

[ {github_id: 84009, author: 'pivotal', name: 'jasmine',
      description: "DOM-less simple JavaScript testing framework",
      website_url: "http://pivotal.github.io/jasmine/",
      doc_url: "http://pivotal.github.io/jasmine/"},
  {github_id: 1451352, author: 'visionmedia', name: 'mocha',
        description: "mocha - simple, flexible, fun javascript test framework for node.js & the browser. (BDD, TDD, QUnit styles via interfaces)",
        website_url: "http://visionmedia.github.io/mocha/",
        doc_url: "http://visionmedia.github.io/mocha/"},
  {github_id: 259691, author: 'jquery', name: 'qunit',
        description: "An easy-to-use JavaScript Unit Testing framework.",
        website_url: "http://qunitjs.com/",
        doc_url: "http://api.qunitjs.com/"}].each do |library|
  Library.create(library.merge({category_id: cat.id}))
end