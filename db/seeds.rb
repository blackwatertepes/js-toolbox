cat = Category.create(name: 'async', full_name: 'Asynchronous')

[ {github_id: 887025, author: 'kriskowal', name: 'q',
    description: "A tool for making and composing asynchronous promises in JavaScript",
    website_url: "http://documentup.com/kriskowal/q",
    doc_url: "http://documentup.com/kriskowal/q"},
  {github_id: 698041, author: 'caolan', name: 'async',
      description: "Async utilities for node and the browser",
      website_url: "https://github.com/caolan/async",
      doc_url: "https://github.com/caolan/async"},
  {github_id: 1545869, author: 'cujojs', name: 'when',
      description: "A solid, fast Promises/A+ and when() implementation, plus other async goodies.",
      website_url: "https://github.com/cujojs/when",
      doc_url: "https://github.com/cujojs/when/blob/master/docs/api.md"},
  {github_id: 6248967, author: 'tildeio', name: 'rsvp.js',
      description: "A lightweight library that provides tools for organizing asynchronous code",
      website_url: "",
      doc_url: ""}].each do |library|
  Library.create(library.merge({category_id: cat.id}))
end