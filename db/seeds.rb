cat = Category.create(name: 'templating', full_name: 'Templating')

[ {github_id: 326688, author: 'janl', name: 'mustache.js',
      description: "Minimal templating with {{mustaches}} in JavaScript",
      website_url: "https://github.com/janl/mustache.js",
      doc_url: "https://github.com/janl/mustache.js"},
  {github_id: 809601, author: 'wycats', name: 'handlebars.js',
        description: "Handlebars provides the power necessary to let you build semantic templates effectively with no frustration.",
        website_url: "http://handlebarsjs.com",
        doc_url: "http://handlebarsjs.com"}].each do |library|
  Library.create(library.merge({category_id: cat.id}))
end