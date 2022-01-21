-- selecting columns from a table; query will then only return what you want
-- SELECT id, first_name, last_name FROM users
-- Order by last_name

-- If you want caption
-- Select id, image_url, user_id
-- Select id, image_url, user_id, caption
-- From posts
-- where user_id = 26;

-- exercise 5
-- Select id, image_url, user_id
-- From posts
-- where user_id = 26 or user_id = 12;

-- exercise 6
-- select count (*) from posts;

-- exercise 7
SELECT user_id, count(*) FROM comments
GROUP BY user_id 
ORDER BY count desc;
