Feature: Create user report
    Create user report, assign it, and close it

    Scenario: A user report is submitted
        Given I am a user viewing another user
        When I click the report button
        Then the report screen opens
        Then I enter information
        Then I hit submit
        Then I see a success page

    Scenario: I am an admin and a report has been submitted
        Given I am an admin
        When I open the reports page
        Then the report is visible
        Then I assign it to myself
        Then it appears in the report queue
        Then I close the report
        Then it appears in the closed queue