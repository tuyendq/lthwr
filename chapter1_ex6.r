library(rvest)
library(tidyverse)

hyperlink_raw_html = "\n<html>\n  <body>\n    <h3>Helpful links</h3>\n    <ul>\n      <li><a href=\"https://wikipedia.org\">Wikipedia</a></li>\n      <li><a href=\"https://dictionary.com\">Dictionary</a></li>\n      <li><a href=\"https://duckduckgo.com\">Search Engine</a></li>\n    </ul>\n    <small>\n      Compiled with help from <a href=\"https://google.com\">Google</a>.\n    </small>\n  </body>\n</html>"
# Extract all the a nodes from the bulleted list
links <- hyperlink_raw_html %>% 
  read_html() %>%
  html_elements('li a') # 'ul a' is also correct!

# Extract the needed values for the data frame
domain_value = links %>% html_attr('href')
name_value = links %>% html_text()

# Construct a data frame
link_df <- tibble(
  domain = domain_value,
  name = name_value
)

print(link_df)

# Perfect! If you haven't seen it already, the pipe notation (%>%) can also be used within another function call, in this case, tibble().