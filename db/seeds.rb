require_relative '../models'
Categories.create(name: "JavaScript", subject: "Front-End Engineering")
Categories.create(name: "Ruby on Rails", subject: "Back-End Engineering")

Terms.create(name: "Array", definition: "You can get elements out of arrays if you know their index. Array elements'' indexes start at 0 and increment by 1, so the first element''s index is 0, the second element''s index is 1, the third element''s is 2, etc.",
            author: "Codecademy", web_link: "https://www.codecademy.com/articles/glossary-javascript", category_id: 1)
Terms.create(name: "Boolean", definition: "A simple explanation would be that == does just value checking ( no type checking ) , whereas , === does both value checking and type checking . Seeing the examples may make it all clear. It is always advisable that you never use == , because == often produces unwanted results",
            author: "Codecademy", web_link: "https://www.codecademy.com/articles/glossary-boolean", category_id: 1)
Terms.create(name: "find", definition: "Using the find method, you can retrieve the object corresponding to the specified primary key that matches any supplied options.",
            author: "David Heinemeier Hansson", web_link: "http://guides.rubyonrails.org/active_record_querying.html", category_id: 2)
Terms.create(name: "take", definition: "The take method retrieves a record without any implicit ordering.", author: "David Heinemeier Hannson", web_link: "http://guides.rubyonrails.org/active_record_querying.html", category_id: 2)
