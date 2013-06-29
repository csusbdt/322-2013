# HTML

## There Is No HTML5

Despite what you've heard, there really is no HTML5.

The current state of HTML specification development is odd. It's done by two organizations: The World Wide Web Consortium (W3C), and the Web Hypertext Application Technology Working Group (WHATWG). The W3C is a consensus-based organization where everyone has to agree on things before they move forward. The WHATWG is a benevolent dictatorship led by Ian Hickson (known as Hixie).

There was a time when only one organization worked on the specification for HTML, and the story of what happened to change that is [long and complicated](http://html5forwebdesigners.com/history/ "A Brief History of Markup"). For now just know that there are two organizations working on the HTML specification, and the process works like this:

1. The WHATWG comes up with proposals as part of its HTML "Living Standard". These are discussed by the community, debated by the official "Members", and then approved or denied by Ian Hickson.
2. The W3C takes the recommendations of the WHATWG, and reviews them further. These changes are discussed by the W3C, and may or may not eventually make it to their HTML specification.
3. Web Browsers (who have representatives at both the WHATWG and W3C) implement things, and all that really matters to you are the things they implement.

That last part is the most important: __a spec doesn't matter until it's implemented__.

Also, because web browsers implement different proposals from different points during the process (or outside of the process entirely), and because they implement different things, implement the same things differently, or don't implement anything at all, there is no HTML5. There is only what you can currently use.

## Use What's Ready

So use what's ready. You can check current support for different HTML, CSS, and Javascript features through [caniuse.com](http://caniuse.com/ "A Site for Browser Compatibility Information"). In the end, deciding what to use is a decision about who you want to support on your site, and what things you are willing to have degrade (gracefully) on older browsers.

## Semantics Matter

That's not to say that the specification doesn't matter. No, the specification process is how things happen in the world of web standards. In fact, the specification is a great place to go to learn about the specific use of different HTML tags. The WHATWG even has a swell [HTML for Developers](http://developers.whatwg.org/ "Read the Manual") guidebook to help you out.

The W3C also has [a Wiki](http://www.w3.org/community/webed/wiki/HTML/Training "HTML for Beginners") with information on all the different HTML tags available to developers.

It's important to remember that whatever tag you are using, it matches up with the purpose of what content it contains. For example, what tag should be used in the code below?

```html
<TAG_NAME>
  <h1 id='logo'><a href='/' title='My Website'>
    My Website
  </a></h1>
</TAG_NAME>
```

Would that be an `<article>`? Probably not. You can see it has a `#logo` in it. So, it's probably a `<header>`!

```html
<header>
  <h1 id='logo'><a href='/' title='My Website'>
    My Website
  </a></h1>
</header>
```

See? Doesn't that make sense?

Keeping your tags correct makes your code more readable and understandable, and is great for sustainability. It also allows you to specifically target things like `<header>`s straight from CSS without nasty nested names or extra id's or classes.