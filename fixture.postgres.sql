BEGIN;

-- A data fixture for annoucements and questions which can be added through REST API as
-- the API is not yet fully implemented. Only the data models exists. 

-- Announcements
INSERT INTO announcements (category, priority, created_at, updated_at) VALUES
    ('INFORMATION', 'MEDIUM', NOW(), NOW()),
    ('INFORMATION', 'LOW', NOW(), NOW());

-- AnnouncementsTexts
INSERT INTO announcement_texts (announcement_id, text, language_id, created_at, updated_at) VALUES
    (1, 'Welcome to the Kolibre Daisy Online demo service.', 1, NOW(), NOW()),
    (1, 'Välkommen till Kolibres Daisy Online demo tjänst.', 2, NOW(), NOW()),
    (2, 'Feel free to use and explore this service. Remember to mark the announcements as read when you have read them.', 1, NOW(), NOW()),
    (2, 'Du kan fritt använda och utforska denna tjänst. Kom ihåg att markera meddelandena som lästa efter att du läst dem.', 2, NOW(), NOW());

-- AnnouncementAudios
INSERT INTO announcement_audios (announcement_text_id, size, length, created_at, updated_at) VALUES
    (1, 24677, 2594, NOW(), NOW()),
    (2, 27392, 2880, NOW(), NOW()),
    (3, 53310, 5680, NOW(), NOW()),
    (4, 63226, 6952, NOW(), NOW());

-- UserAnnouncements
-- INSERT INTO user_announcements (user_id, announcement_id, created_at, updated_at) VALUES
--     (1, 1, NOW(), NOW()),
--     (1, 2, NOW(), NOW()),
--     (2, 1, NOW(), NOW()),
--     (2, 2, NOW(), NOW()),
--     (3, 1, NOW(), NOW()),
--     (3, 2, NOW(), NOW()),
--     (4, 1, NOW(), NOW()),
--     (4, 2, NOW(), NOW()),
--     (5, 1, NOW(), NOW()),
--     (5, 2, NOW(), NOW()),
--     (6, 1, NOW(), NOW()),
--     (6, 2, NOW(), NOW()),
--     (7, 1, NOW(), NOW()),
--     (7, 2, NOW(), NOW()),
--     (8, 1, NOW(), NOW()),
--     (8, 2, NOW(), NOW()),
--     (9, 1, NOW(), NOW()),
--     (9, 2, NOW(), NOW()),
--     (10, 1, NOW(), NOW()),
--     (10, 2, NOW(), NOW()),
--     (11, 1, NOW(), NOW()),
--     (11, 2, NOW(), NOW());

-- Questions
INSERT INTO questions (id, parent_id, question_type_id, created_at, updated_at) VALUES
    (1, 0, 1, NOW(), NOW()), -- MAIN MENU
    (2, 1, 3, NOW(), NOW()), -- search option
    (3, 1, 3, NOW(), NOW()), -- browse option
    (4, 1, 3, NOW(), NOW()), -- feedback option
    (20, 2, 1, NOW(), NOW()), -- SEARCH MENU
    (21, 20, 3, NOW(), NOW()), -- search by author
    (22, 20, 3, NOW(), NOW()), -- search by title
    (23, 21, 2, NOW(), NOW()), -- input for search by author
    (24, 22, 2, NOW(), NOW()), -- input for search by title
    (25, 23, 4, NOW(), NOW()), -- endpoint for search by author
    (26, 24, 4, NOW(), NOW()), -- endpoint for search by title
    (30, 3, 1, NOW(), NOW()), -- BROWSE MENU
    (31, 30, 3, NOW(), NOW()), -- browse by title
    (32, 30, 3, NOW(), NOW()), -- browse by daisy2
    (33, 30, 3, NOW(), NOW()), -- browse by daisy3
    (34, 31, 4, NOW(), NOW()), -- endpoint for browse by title
    (35, 32, 4, NOW(), NOW()), -- endpoint for browse by daisy2
    (36, 33, 4, NOW(), NOW()), -- endpoint for browse by daisy3
    (40, 4, 1, NOW(), NOW()), -- FEEDBACK MENU (rate)
    (41, 4, 2, NOW(), NOW()), -- FEEDBACK MENU (custom feedback)
    (42, 40, 3, NOW(), NOW()), -- rate option excellent
    (43, 40, 3, NOW(), NOW()), -- rate option good
    (44, 40, 3, NOW(), NOW()), -- rate option fair
    (45, 40, 3, NOW(), NOW()), -- rate option poor
    (46, 41, 5, NOW(), NOW()), -- endpoint for feedback
    (47, 42, 5, NOW(), NOW()), -- endpoint for feedback
    (48, 43, 5, NOW(), NOW()), -- endpoint for feedback
    (49, 44, 5, NOW(), NOW()), -- endpoint for feedback
    (50, 45, 5, NOW(), NOW()); -- endpoint for feedback
ALTER SEQUENCE questions_id_seq RESTART WITH 51;

-- QuestionInputs
INSERT INTO question_inputs (question_id, created_at, updated_at) VALUES
    (1, NOW(), NOW()),
    (20, NOW(), NOW()),
    (30, NOW(), NOW()),
    (40, NOW(), NOW());
INSERT INTO question_inputs (question_id, text_alphanumeric, created_at, updated_at) VALUES
    (23, 1, NOW(), NOW()),
    (24, 1, NOW(), NOW()),
    (41, 1, NOW(), NOW());

-- QuestionTexts
INSERT INTO question_texts (language_id, text, created_at, updated_at) VALUES 
    (1, 'What would you like to do?', NOW(), NOW()),
    (2, 'Vad vill du göra?', NOW(), NOW()),
    (1, 'Search the library.', NOW(), NOW()),
    (2, 'Söka i biblioteket.', NOW(), NOW()),
    (1, 'Browse the library.', NOW(), NOW()),
    (2, 'Utforska biblioteket.', NOW(), NOW()),
    (1, 'Give feedback.', NOW(), NOW()),
    (2, 'Ge feedback.', NOW(), NOW()),
    (1, 'What do you want to search by?', NOW(), NOW()),
    (2, 'Vad vill du söka enligt?', NOW(), NOW()),
    (1, 'Search by author.', NOW(), NOW()),
    (2, 'Sök bland författare.', NOW(), NOW()),
    (1, 'Search by title.', NOW(), NOW()),
    (2, 'Sök bland titel.', NOW(), NOW()),
    (1, 'Author keywords:', NOW(), NOW()),
    (2, 'Sökord författare:', NOW(), NOW()),
    (1, 'Title keywords:', NOW(), NOW()),
    (2, 'Sökord titel:', NOW(), NOW()),
    (1, 'How do you want to browse the library?', NOW(), NOW()),
    (2, 'Hur vill du utforska biblioteket?', NOW(), NOW()),
    (1, 'Browse by title.', NOW(), NOW()),
    (2, 'Utforska bland titlar.', NOW(), NOW()),
    (1, 'Browse by Daisy 2 content format.', NOW(), NOW()),
    (2, 'Utforska bland Daisy 2 filformat.', NOW(), NOW()),
    (1, 'Browse by Daisy 3 content format.', NOW(), NOW()),
    (2, 'Utforska bland Daisy 3 filformat.', NOW(), NOW()),
    (1, 'How would you rate this service?', NOW(), NOW()),
    (2, 'Hur skulle du betygsätta denna tjänst?', NOW(), NOW()),
    (1, 'Optional feedback?', NOW(), NOW()),
    (2, 'Frivillig feedback?', NOW(), NOW()),
    (1, 'Excellent.', NOW(), NOW()),
    (2, 'Utmärkt.', NOW(), NOW()),
    (1, 'Good.', NOW(), NOW()),
    (2, 'Bra.', NOW(), NOW()),
    (1, 'Fair.', NOW(), NOW()),
    (2, 'Dålig.', NOW(), NOW()),
    (1, 'Poor.', NOW(), NOW()),
    (2, 'Usel.', NOW(), NOW()),
    (1, 'Thank you for your feedback.', NOW(), NOW()),
    (2, 'Tack för din feedback.', NOW(), NOW());

-- QuestionAudios
INSERT INTO question_audios (question_text_id, size, length, created_at, updated_at) VALUES
    (1, 13817, 1303, NOW(), NOW()),
    (2, 14634, 1049, NOW(), NOW()),
    (3, 13649, 1016, NOW(), NOW()),
    (4, 14255, 1358, NOW(), NOW()),
    (5, 13414, 971, NOW(), NOW()),
    (6, 14323, 1427, NOW(), NOW()),
    (7, 10317, 776, NOW(), NOW()),
    (8, 11936, 865, NOW(), NOW()),
    (9, 16948, 1731, NOW(), NOW()),
    (10, 15906, 1495, NOW(), NOW()),
    (11, 12455, 920, NOW(), NOW()),
    (12, 12857, 1475, NOW(), NOW()),
    (13, 10729, 1016, NOW(), NOW()),
    (14, 11504, 1092, NOW(), NOW()),
    (15, 11760, 926, NOW(), NOW()),
    (16, 13190, 1380, NOW(), NOW()),
    (17, 9871, 972, NOW(), NOW()),
    (18, 9975, 997, NOW(), NOW()),
    (19, 22087, 1985, NOW(), NOW()),
    (20, 21288, 2002, NOW(), NOW()),
    (21, 9715, 972, NOW(), NOW()),
    (22, 13854, 1339, NOW(), NOW()),
    (23, 19397, 2018, NOW(), NOW()),
    (24, 20361, 2267, NOW(), NOW()),
    (25, 19313, 2052, NOW(), NOW()),
    (26, 21900, 2292, NOW(), NOW()),
    (27, 17356, 1507, NOW(), NOW()),
    (28, 21999, 2198, NOW(), NOW()),
    (29, 11525, 1027, NOW(), NOW()),
    (30, 15271, 1219, NOW(), NOW()),
    (31, 8239, 635, NOW(), NOW()),
    (32, 9086, 662, NOW(), NOW()),
    (33, 5465, 324, NOW(), NOW()),
    (34, 8102, 447, NOW(), NOW()),
    (35, 7485, 394, NOW(), NOW()),
    (36, 6234, 424, NOW(), NOW()),
    (37, 5358, 318, NOW(), NOW()),
    (38, 7797, 429, NOW(), NOW()),
    (39, 15523, 1368, NOW(), NOW()),
    (40, 14041, 1320, NOW(), NOW());

-- QuestionQuestionTexts
INSERT INTO question_question_texts (question_id, question_text_id, created_at, updated_at) VALUES
    (1, 1, NOW(), NOW()),
    (1, 2, NOW(), NOW()),
    (2, 3, NOW(), NOW()),
    (2, 4, NOW(), NOW()),
    (3, 5, NOW(), NOW()),
    (3, 6, NOW(), NOW()),
    (4, 7, NOW(), NOW()),
    (4, 8, NOW(), NOW()),
    (20, 9, NOW(), NOW()),
    (20, 10, NOW(), NOW()),
    (21, 11, NOW(), NOW()),
    (21, 12, NOW(), NOW()),
    (22, 13, NOW(), NOW()),
    (22, 14, NOW(), NOW()),
    (23, 15, NOW(), NOW()),
    (23, 16, NOW(), NOW()),
    (24, 17, NOW(), NOW()),
    (24, 18, NOW(), NOW()),
    (30, 19, NOW(), NOW()),
    (30, 20, NOW(), NOW()),
    (31, 21, NOW(), NOW()),
    (31, 22, NOW(), NOW()),
    (32, 23, NOW(), NOW()),
    (32, 24, NOW(), NOW()),
    (33, 25, NOW(), NOW()),
    (33, 26, NOW(), NOW()),
    (40, 27, NOW(), NOW()),
    (40, 28, NOW(), NOW()),
    (41, 29, NOW(), NOW()),
    (41, 30, NOW(), NOW()),
    (42, 31, NOW(), NOW()),
    (42, 32, NOW(), NOW()),
    (43, 33, NOW(), NOW()),
    (43, 34, NOW(), NOW()),
    (44, 35, NOW(), NOW()),
    (44, 26, NOW(), NOW()),
    (45, 37, NOW(), NOW()),
    (45, 38, NOW(), NOW()),
    (46, 39, NOW(), NOW()),
    (46, 40, NOW(), NOW()),
    (47, 39, NOW(), NOW()),
    (47, 40, NOW(), NOW()),
    (48, 39, NOW(), NOW()),
    (48, 40, NOW(), NOW()),
    (49, 39, NOW(), NOW()),
    (49, 40, NOW(), NOW()),
    (50, 39, NOW(), NOW()),
    (50, 40, NOW(), NOW());

COMMIT;