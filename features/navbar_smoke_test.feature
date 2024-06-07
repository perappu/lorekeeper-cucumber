Feature: Navigation bar on every page
    The navigation bar should have clickable valid links

    Scenario Outline: Click links
        Given I am not logged in
        When I open "<route>" page
        Then the page should load successfully and show the title "<title>"

    Examples:
    | route | title |
    | /news | News |
    | /sales | Sales |
    | /users | User Index |
    | /masterlist | Character Masterlist |
    | /myos | MYO Slot Masterlist |
    | /raffles | Raffles |
    | /reports/bug-reports | Bug Reports |
    | /world | World |
    | /prompts | Prompts |
    | /shops | Shops |
    | /gallery | Gallery |
    | /login | Log In |
    | /register | Register |
