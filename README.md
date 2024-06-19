Register a User:

Method: POST
URL: http://localhost:3000/api/register
Body (raw, JSON)

{
    "email": "testuser@example.com",
    "password": "yourpassword",
    "bio": "This is a test user.",
    "profilePicture": "http://example.com/profile.jpg",
    "username": "testuser"
}

===========================================================
Log in a User:

Method: POST
URL: http://localhost:3000/api/login
Body (raw, JSON):

{
    "email": "testuser@example.com",
    "password": "yourpassword"
}
===========================================================
Log out a User:

Method: POST
URL: http://localhost:3000/api/logout
Headers:
Key: Authorization
Value: Bearer YOUR_TOKEN (replace YOUR_TOKEN with the token you received from the login response)
===========================================================
Create a Story:

Method: POST
URL: http://localhost:3000/api/stories
Headers:
Key: Authorization
Value: Bearer YOUR_TOKEN (replace YOUR_TOKEN with the token you received from the login response)

{
    "title": "My First Story",
    "description": "This is a description of my first story.",
    "content": "Once upon a time...",
    "author": "Author Name",
    "coverImage": "http://example.com/cover.jpg",
    "genre": "Fiction",
    "tags": ["tag1", "tag2"]
}
===========================================================
Get a Story by ID:

Method: GET
URL: http://localhost:3000/api/stories/YOUR_STORY_ID (replace YOUR_STORY_ID with the ID of the story you want to check)
===========================================================
Update a Story by ID:

Method: PUT
URL: http://localhost:3000/api/stories/YOUR_STORY_ID (replace YOUR_STORY_ID with the ID of the story you want to update)
Headers:
Key: Authorization
Value: Bearer YOUR_TOKEN (replace YOUR_TOKEN with the token you received from the login response)

{
    "title": "Updated Story Title",
    "description": "This is an updated description.",
    "content": "Updated content...",
    "author": "Updated Author Name",
    "coverImage": "http://example.com/newcover.jpg",
    "genre": "Updated Genre",
    "tags": ["updatedTag1", "updatedTag2"]
}
===========================================================
Delete a Story by ID:

Method: DELETE
URL: http://localhost:3000/api/stories/YOUR_STORY_ID (replace YOUR_STORY_ID with the ID of the story you want to delete)
Headers:
Key: Authorization
Value: Bearer YOUR_TOKEN (replace YOUR_TOKEN with the token you received from the login response)
===========================================================
Add a Comment to a Story:

Method: POST
URL: http://localhost:3000/api/stories/YOUR_STORY_ID/comments (replace YOUR_STORY_ID with the ID of the story you want to comment on)
Headers:
Key: Authorization
Value: Bearer YOUR_TOKEN (replace YOUR_TOKEN with the token you received from the login response)

{
    "userId": "USER_ID",
    "content": "This is a comment."
}
===========================================================
Add a Like to a Story:

Method: POST
URL: http://localhost:3000/api/stories/YOUR_STORY_ID/likes (replace YOUR_STORY_ID with the ID of the story you want to like)
Headers:
Key: Authorization
Value: Bearer YOUR_TOKEN (replace YOUR_TOKEN with the token you received from the login response)

{
    "userId": "USER_ID"
}

