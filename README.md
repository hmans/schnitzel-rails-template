# schnitzel-rails-template

What's up, schnitzel lovers? Here's our own little Rails application
template, setting up fresh Rails applications with our favorite set
of gems and stuff:

* [HAML](https://github.com/nex3/haml). Need we say more? It should be default for Rails, just like SASS.
* [inherited_resources](https://github.com/josevalim/inherited_resources), like a beautiful, but slightly evil mistress that makes sure you stay on the path of RESTfulnessness.
* [simple_form](https://github.com/plataformatec/simple_form). We couldn't work without it. (Yes, we do think it's superior even to the excellent formtastic. Sue us.)

When it comes to testing, this template adds:

* [rspec](https://github.com/rspec/rspec-rails), our currently preferred test framework.
* [fabrication](http://fabricationgem.org/). Yeah.
* [ffaker](https://github.com/EmmanuelOga/ffaker). It's like [faker](http://faker.rubyforge.org/), but with more _f_.
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers), because we're going to hell, anyway.

Please note that this template is meant to be _schnitzel opinionated_. It integrates our current set of favorite gems, and if you disagree with our selection, then frankly, that's pretty much your thing, tiger. There are no plans to make this thing all-encompassing or even, gasp, interactive. It's minimal, it's what we like, it's what we use, and we're happy if you like it, too. \o/

### Usage

    rails new facebook2 -m http://git.io/schnitzel-rails-template -T

This will generate a new Rails app and use our little template
to add, well, the things mentioned above. We live in exciting times.

Enjoy.