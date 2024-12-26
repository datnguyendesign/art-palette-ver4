-- Database: art_palette
CREATE DATABASE art_palette;

-- Table: account
CREATE TABLE `account` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `email` varchar(255) NOT NULL,
 `username` varchar(255) NOT NULL,
 `password` varchar(255) NOT NULL,
 `birthday` date NOT NULL,
 avatar varchar(255) DEFAULT 'images/avatar.jpg' NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table: categories
CREATE TABLE `categories` (
 `categoryID` int(11) NOT NULL AUTO_INCREMENT,
 `categoryName` varchar(255) NOT NULL,
 PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table: images
CREATE TABLE `images` (
 `imageID` int(11) NOT NULL AUTO_INCREMENT,
 `imageName` varchar(255) NOT NULL,
 `imageDescription` text NOT NULL,
 `imageSource` varchar(255) NOT NULL,
 `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
 `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 PRIMARY KEY (`imageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `posts` (
 `postID` int(11) NOT NULL AUTO_INCREMENT,
 `userID` int(11) NOT NULL,
 `title` varchar(255) NOT NULL,
 `description` text DEFAULT NULL,
 `categoryID` int(11) NOT NULL,
 `likeCount` int(11) NOT NULL DEFAULT 0,
 `downloadCount` int(11) NOT NULL DEFAULT 0,
 `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
 `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 PRIMARY KEY (`postID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

-- Insert data into Account table
INSERT INTO account (email, username, password, birthday, avatar) VALUES ('admin@gmail.com', 'admin', '123', '2003-12-29', 'images/avatar.jpg'),
('john.doe@example.com', 'john_doe', 'securepass123', '1990-05-15', 'images/avatar.jpg'),
('jane.smith@example.com', 'jane_smith', 'myp@ssw0rd', '1985-09-20', 'images/avatar.jpg'),
('mike.jones@example.com', 'mike_jones', 'strongP@ss', '1988-02-10', 'images/avatar.jpg'),
('emily.white@example.com', 'emily_white', 'passw0rd!', '1992-07-05', 'images/avatar.jpg'),
('alex.miller@example.com', 'alex_miller', 'secret123', '1995-12-25', 'images/avatar.jpg'),
('lisa.green@example.com', 'lisa_green', 'letmein', '1983-04-30', 'images/avatar.jpg'),
('brian.wilson@example.com', 'brian_wilson', 'brianspass', '1987-08-12', 'images/avatar.jpg'),
('sara.jenkins@example.com', 'sara_jenkins', 'mysecurepass', '1994-11-18', 'images/avatar.jpg'),
('david.brown@example.com', 'david_brown', 'davidpass', '1982-06-08', 'images/avatar.jpg'),
('olivia.james@example.com', 'olivia_james', 'oliviasp@ss', '1998-03-10', 'images/avatar.jpg')


-- Insert data into Categories table
INSERT INTO categories (categoryName) VALUES ('Nature');
INSERT INTO categories (categoryName) VALUES ('Artwork');
INSERT INTO categories (categoryName) VALUES ('Portrait');
INSERT INTO categories (categoryName) VALUES ('Photos');
INSERT INTO categories (categoryName) VALUES ('Cartoon');

-- Insert data into Images table
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Spring Flowers','Destinations to Visit and See Gorgeous Spring Flowers', 'images/14 Destinations to Visit and See Gorgeous Spring Flowers.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Alberta, Canada', '17 Best Things To Do In Alberta, Canada', 'images/17 Best Things To Do In Alberta, Canada.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('18 Year Old Creates Surreal', '18-Year-Old Creates Surreal Artworks to Express Emotions ', 'images/18-Year-Old Creates Surreal Artworks to Express Emotions (1).jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('unusual landscapes travel', '190517091026-07-unusual-landscapes-travel', 'images/190517091026-07-unusual-landscapes-travel.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Outdoor Photoshoot', 'Outdoor Photoshoot Ideas - Easy Backyard Photography Guide', 'images/20 Outdoor Photoshoot Ideas - Easy Backyard Photography Guide.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('The Most Memorable Pics', '30 Of The Most Memorable Pics From The 2018 International Landscape Photographer Of The Year Contest', 'images/30 Of The Most Memorable Pics From The 2018 International Landscape Photographer Of The Year Contest.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Thought-Provoking Digital Illustrations', '30 Thought-Provoking Digital Illustrations That Expose The Flaws Of Our Modern Society', 'images/30 Thought-Provoking Digital Illustrations That Expose The Flaws Of Our Modern Society.png');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Art Aesthetic', 'Aesthetics_ A Guide - Art Aesthetic - Phone Wallpaper', 'images/Aesthetics_ A Guide - Art Aesthetic - Phone Wallpaper.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Arcane Jinx', 'Arcane Jinx', 'images/Arcane Jinx.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Art Media', 'Art _ Media', 'images/Art _ Media.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Artist Draws Hyper-Realistic', 'Artist Draws Hyper-Realistic Drawings Using Only A Pencil (42 Pics)', 'images/Artist Draws Hyper-Realistic Drawings Using Only A Pencil (42 Pics).jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('AstroBank commercial illustrations', 'AstroBank commercial illustrations', 'images/AstroBank commercial illustrations_ (1).png');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Austronaut on a mountain', 'austronaut on a mountain', 'images/austronaut on a mountain.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('avt', 'avt', 'images/avt.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('The Lake', 'Your feeling is not the thing that decided you what to do', 'images/b4102c5a-e5a7-4714-9161-27256e87ddca.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Beauty', 'Beauty', 'images/Beauty.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Blood', 'Blood_png by Marina Matijaca', 'images/Blood_png by Marina Matijaca.png');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Caterina Blume', 'Caterina Blume _ Saatchi Art', 'images/Caterina Blume _ Saatchi Art.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Cheap DIY Artwork', 'Cheap DIY Artwork', 'images/Cheap DIY Artwork!.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Cherry Blossom Riverside Retreat', 'Cherry Blossom Riverside Retreat', 'images/Cherry Blossom Riverside Retreat.png');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Anime background', 'Cool anime backgrounds, Anime, Anime background', 'images/Cool anime backgrounds, Anime, Anime background.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Cosy Refugium', 'Cosy Refugium', 'images/Cosy Refugium.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Cuoc song nay rat dep', 'Cuoc song nay rat dep', 'images/Cuoc song nay rat dep.jpg'),
                                                                     ('download (1)', 'download (1)', 'images/download (1).jpg'),
                                                                     ('download (2)', 'download (2)', 'images/download (2).jpg'),
                                                                     ('Kayaking First Person View Illustration', 'Download Kayaking First Person View Illustration for free', 'images/Download Kayaking First Person View Illustration for free.jpg'),
                                                                     ('download', 'download', 'images/download.jpg'),
                                                                     ('download', 'download', 'images/download.png'),
                                                                     ('Flower Fields Carlsbad', 'Flower Fields Carlsbad_ This Is the Best Time To Visit + A Visitors Guide', 'images/Flower Fields Carlsbad_ This Is the Best Time To Visit + A Visitors Guide.jpg'),
                                                                     ('flower', 'flower', 'images/flower.jpg'),
                                                                     ('Monstera, Plant, Leaves, Tropical', 'Free Image on Pixabay - Monstera, Plant, Leaves, Tropical', 'images/Free Image on Pixabay - Monstera, Plant, Leaves, Tropical (1).jpg'),
                                                                     ('Garden decor DIY', 'Garden decor DIY_ home garden decor 2023', 'images/Garden decor DIY_ home garden decor 2023.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('Girl with a Pearl Earring', 'Girl with a Pearl Earring', 'images/Girl with a Pearl Earring.jpg'),
                                                                     ('Girls Series, BM', 'Girls Series, BM', 'images/Girls Series, BM.jpg'),
                                                                     ('Google Images', 'Google Images', 'images/Google Images (1).png'),
                                                                     ('Green is good', 'Green is good', 'images/Green is good.jpg'),
                                                                     ('Beautiful landscape digital art', 'HD-wallpaper-beautiful-landscape-digital-art', 'images/HD-wallpaper-beautiful-landscape-digital-art.jpg'),
                                                                     ('How to Grow and Care for Snowdrop Flower', 'How to Grow and Care for Snowdrop Flower', 'images/How to Grow and Care for Snowdrop Flower.jpg'),
                                                                     ('How To Use Atmospheric Perspective To Create Depth', 'How To Use Atmospheric Perspective To Create Depth', 'images/How To Use Atmospheric Perspective To Create Depth (1).png'),
                                                                     ('img', 'img', 'images/img.jpg'),
                                                                     ('img1-1', 'img1-1', 'images/img1-1.png'),
                                                                     ('img1', 'img1', 'images/img1.jpg'),
                                                                     ('img10', 'img10', 'images/img10.jpg'),
                                                                     ('img11', 'img11', 'images/img11.jpg'),
                                                                     ('img12', 'img12', 'images/img12.jpg'),
                                                                     ('img14', 'img14', 'images/img14.jpg'),
                                                                     ('img16', 'img16', 'images/img16.jpg'),
                                                                     ('img18', 'img18', 'images/img18.jpg'),
                                                                     ('img2', 'img2', 'images/img2.jpg'),
                                                                     ('img22', 'img22', 'images/img22.jpg'),
                                                                     ('img24', 'img24', 'images/img24.jpg'),
                                                                     ('img26', 'img26', 'images/img26.jpg');
INSERT INTO images (imageName, imageDescription, imageSource) VALUES ('img3', 'img3', 'images/img3.jpg'),
                                                                     ('img34', 'img34', 'images/img34.jpg'),
                                                                     ('img35', 'img35', 'images/img35.jpg'),
                                                                     ('img4', 'img4', 'images/img4.jpg'),
                                                                     ('img5', 'img5', 'images/img5.jpg'),
                                                                     ('img6', 'img6', 'images/img6.jpg'),
                                                                     ('img8', 'img8', 'images/img8.png'),
                                                                     ('img9', 'img9', 'images/img9.jpg'),
                                                                     ('Koki Ikegami', 'Koki Ikegami on Twitter', 'images/Koki Ikegami on Twitter.jpg'),
                                                                     ('Moonlight Mountain', 'Landscape [7] - Moonlight Mountain by ncoll36 on DeviantArt', 'images/Landscape [7] - Moonlight Mountain by ncoll36 on DeviantArt.jpg'),
                                                                     ('Llucia _ Photos', 'Llucia _ Photos', 'images/Llucia _ Photos (1).png'),
                                                                     ('Mass', 'Mass', 'images/Mass.jpg'),
                                                                     ('minimalist art', 'minimalist art', 'images/minimalist art.jpg'),
                                                                     ('mobile wallpaper2 by maria shanina', 'mobile_wallpaper2_by_maria_shanina_png by Maria', 'images/mobile_wallpaper2_by_maria_shanina_png by Maria.png'),
                                                                     ('New Architectural Sculptures', 'New Architectural Sculptures by David Moreno Appear As Three Dimensional Drawings Colossal', 'images/New Architectural Sculptures by David Moreno Appear As Three Dimensional Drawings Colossal.jpg'),
                                                                     ('on Twitter', 'on Twitter', 'images/on Twitter.jpg'),
                                                                     ('page-2', 'page-2', 'images/page-2.png'),
                                                                     ('pexels arkkrapol anantachote', 'pexels-arkkrapol-anantachote', 'images/pexels-arkkrapol-anantachote-1571746.jpg'),
                                                                     ('pexels ezra comeau', 'pexels-ezra-comeau', 'images/pexels-ezra-comeau-2387418.jpg'),
                                                                     ('pexels jaime reimer', 'pexels-jaime-reimer', 'images/pexels-jaime-reimer-2662116.jpg'),
                                                                     ('pexels liger pham', 'pexels-liger-pham', 'images/pexels-liger-pham-1108701.jpg'),
                                                                     ('pexels marlon martinez', 'pexels-marlon-martinez', 'images/pexels-marlon-martinez-1450082.jpg'),
                                                                     ('pexels-pixabay', 'pexels-pixabay', 'images/pexels-pixabay-147411.jpg'),
                                                                     ('pexels tomás malík', 'pexels-tomás-malík', 'images/pexels-tomás-malík-3408354.jpg'),
                                                                     ('Phone Wallpapers', 'Phone Wallpapers _ Scenery wallpaper, Abstract art wallpaper, Phone wallpaper images', 'images/Phone Wallpapers _ Scenery wallpaper, Abstract art wallpaper, Phone wallpaper images.jpg'),
                                                                     ('Photos of worlds most beautiful landscapes', 'Photos of worlds most beautiful landscapes look theyre from dreams', 'images/Photos of worlds most beautiful landscapes look theyre from dreams.png'),
                                                                     ('Astronaut wallpaper', 'Pin by MiLan on cuoc song nay rat dep _ _ Astronaut wallpaper, Pretty wallpapers, Art wallpaper', 'images/Pin by MiLan on cuoc song nay rat dep _ _ Astronaut wallpaper, Pretty wallpapers, Art wallpaper.jpg'),
                                                                     ('Pin de Alisson Pinheiro em Wallpapers', 'Pin de Alisson Pinheiro em Wallpapers _ Wallpaper pisicodelico, Imagem de fundo para iphone, Wallpapers bonitos', 'images/Pin de Alisson Pinheiro em Wallpapers _ Wallpaper pisicodelico, Imagem de fundo para iphone, Wallpapers bonitos.jpg'),
                                                                     ('pinterest-babygirls', 'pinterest-babygirls', 'images/pinterest-babygirls.jpg'),
                                                                     ('Portrait Drawing References', 'Portrait Drawing References', 'images/Portrait Drawing References.jpg')


INSERT INTO posts (userID, title, description, categoryID, likeCount, downloadCount) VALUES ('1', 'Out Of The Earth, Give You My Love', 'Lorem Ipsum Dolor Sit, Amet Consectetur Adipisicing Elit. Enim, A Quidem? Eveniet, Iure. Esse, Eius.', '1', '15', '50')

