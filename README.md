## A collection of Cucumber tests for lorekeeper

DO NOT RUN THESE ON YOUR LIVE SITE, or at least know what you're doing if you are. They might create a bunch of random data that you probably don't want.

A small suite of Gherkin/Cucumber tests to run after making updates, to hopefully catch bugs early.

To run:
- Install node.js with your favorite method: https://nodejs.org/en

- Change the variables in `features/env.js` to reflect your website.

- Install packages
``` npm install ```

- Run tests
``` npm test ```

### Writing your own tests

These tests are written in Gherkin (on top of Cucumber with Selenium), making it really easy to write your own tests as long as the existing "lines" are there.
Create a file under /features with a .feature extension and it'll run the test.

Lines currently available
- "Given I am not logged in"
- "When I open `<path>` page" (use a local path such as /info, /login, etc)
- "Then the page should load successfully and show the title `<text>`"
- "When I click a link that says `<text>`"

#### Example
`features/open_news_page.feature`
```
Feature: Navigate to news
    The news should be visible to logged out users

    Scenario Outline: Click news link
        Given I am not logged in
        When I open "<route>" page
        Then the page should load successfully and show the title "<title>"

    Examples:
    | route | title |
    | /news | News |
```

You can read more about Gherkin syntax here: https://cucumber.io/docs/gherkin/reference/
