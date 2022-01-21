-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
FROM users 
ORDER BY last_name;



-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id=26;



-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 OR user_id = 12;



-- Exercise 6
SELECT count(*) FROM posts;



-- Exercise 7
SELECT user_id, count(*) 
FROM comments
GROUP BY user_id
ORDER BY count desc;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name FROM posts 
INNER JOIN users ON posts.user_id=users.id
WHERE user_id=26 or user_id=12;

-- does it matter which order we have FROM and INNER JOIN table in if select can hold columns from different tables?



-- Exercise 9
-- TODO: what is each part of this? don't really understand join operaitons
SELECT posts.id, posts.pub_date, following.following_id 
FROM following
INNER JOIN posts ON following_id=posts.id
WHERE following.user_id=26;



-- Exercise 10




-- Exercise 11
INSERT INTO bookmarks(219, 26, posts.getfromid(2))
-- What's the difference between id and post_id? 
-- How would we access post_id if we're only doing a single query and post_id is in `posts` table?
	-- Do we need to specify the arguments for bookmarks in order (python)? 
		-- Do we need to specify all of them? 
		-- How do we know what the order is?
-- What does dot notation mean? 
(id, user_id, post_id)



-- Exercise 12
DELETE FROM bookmarks
WHERE post_id=219 OR post_id=220 OR post_id=221;



-- Exercise 13
UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id=26;



-- Exercise 14
-- What's wrong with this?
SELECT id, user_id, count(comments), caption FROM posts
GROUP BY id=comments.post_id
WHERE user_id=26;