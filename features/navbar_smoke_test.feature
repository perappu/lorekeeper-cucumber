Feature: Navigation bar on every page
    The navigation bar should have clickable valid links

    Scenario Outline: Click links
        Given I am not logged in
        When I open "<route>" page
        Then the page should load successfully

    Examples:
    | /news |
    | /sales |
    | /users |
    | /masterlist |
    | /myos |
    | /raffles |
    | /reports/bug-reports |
    | /world |
    | /world/info |
    | /prompts |
    | /shops |
    | /gallery |
