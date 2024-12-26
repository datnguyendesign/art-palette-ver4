<?php
    require_once "connection.php";

    if (!isset($_COOKIE['user_id'])) {
        header("location: login.php");
    }

    if (!empty($_COOKIE['user_id'])) {
        $sql = "SELECT * FROM account WHERE id = " . $_COOKIE['user_id'];
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);

        $email = $row['email'];
        $username = $row['username'];
        $id = $row['id'];
    } else {
        $row = -1;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <header>
        <a href="index.php" class="logo">
            <div class="image">
                <svg width="150.29002380371094" height="62.866700447571446" viewBox="0 0 366.2160313579785 64.8" class="css-1j8o68f">
                    <defs id="SvgjsDefs1569">
                        <linearGradient id="SvgjsLinearGradient1576">
                            <stop id="SvgjsStop1577" stop-color="#8f5e25" offset="0"></stop>
                            <stop id="SvgjsStop1578" stop-color="#fbf4a1" offset="0.5"></stop>
                            <stop id="SvgjsStop1579" stop-color="#8f5e25" offset="1"></stop>
                        </linearGradient>
                        <linearGradient id="SvgjsLinearGradient1580">
                            <stop id="SvgjsStop1581" stop-color="#8f5e25" offset="0"></stop>
                            <stop id="SvgjsStop1582" stop-color="#fbf4a1" offset="0.5"></stop>
                            <stop id="SvgjsStop1583" stop-color="#8f5e25" offset="1"></stop>
                        </linearGradient>
                        <linearGradient id="SvgjsLinearGradient1584">
                            <stop id="SvgjsStop1585" stop-color="#8f5e25" offset="0"></stop>
                            <stop id="SvgjsStop1586" stop-color="#fbf4a1" offset="0.5"></stop>
                            <stop id="SvgjsStop1587" stop-color="#8f5e25" offset="1"></stop>
                        </linearGradient>
                    </defs>
                    <g id="SvgjsG1571" featurekey="inlineSymbolFeature-0" transform="matrix(0.13775511276518473,0,0,0.13775511276518473,93.46887987731465,-22.151020451060738)" fill="url(#SvgjsLinearGradient1580)">
                        <g xmlns="http://www.w3.org/2000/svg">
                            <path d="M198.1,507c11.4,0,20.7-9.2,20.6-20.6V205.8c0-2.1,1.7-3.8,3.8-3.8H365c11.4,0,20.6-9.2,20.6-20.6s-9.2-20.6-20.6-20.6   H222.5c-24.8,0-45,20.2-45,45v280.6C177.5,497.8,186.7,507,198.1,507z"></path>
                            <path d="M227.4,566l-36.5,23.6c-1,0.5-2,0.4-2.6,0.2c-0.7-0.2-1.7-0.6-2.3-1.7l-140.3-243c-0.7-1.1-0.6-2.2-0.4-2.9   s0.6-1.7,1.7-2.3l86.5-51.6c9.8-5.9,13-18.5,7.2-28.3c-5.9-9.8-18.5-13-28.3-7.2l-86.2,51.4c-10.3,6-17.7,15.7-20.8,27.3   c-3.1,11.7-1.5,23.8,4.5,34.2l140.2,242.9c6,10.4,15.8,17.9,27.4,21c3.9,1.1,7.9,1.6,11.8,1.6c7.8,0,15.5-2,22.5-6l0.5-0.3   l37.5-24.3c9.6-6.2,12.3-18.9,6.1-28.5C249.7,562.5,237,559.8,227.4,566z"></path>
                            <path d="M606.6,320.7c-3.2-11.7-10.6-21.4-21-27.4L460.4,221c-6.8-3.9-14.5-6-22.4-6c-16.1,0-31.1,8.6-39.1,22.5l-140.3,243   c-6,10.4-7.6,22.6-4.5,34.2c3.2,11.7,10.6,21.4,21,27.4l125.3,72.3c6.8,3.9,14.5,6,22.4,6c16.1,0,31-8.7,39-22.5l140.3-243   C608.1,344.5,609.7,332.3,606.6,320.7z M566.3,334.3L426,577.3c-0.7,1.4-2.2,1.9-3.3,1.9c-0.6,0-1.2-0.2-1.8-0.5l-125.2-72.3   c-1.1-0.6-1.5-1.6-1.7-2.3c-0.1-0.7-0.2-1.8,0.4-2.9l140.3-243c0.7-1.4,2.2-1.9,3.3-1.9c0.6,0,1.2,0.1,1.7,0.5l125.2,72.3   c1.1,0.6,1.5,1.6,1.7,2.3S566.9,333.2,566.3,334.3z"></path>
                        </g>
                    </g>
                </svg>
            </div>
            <div class="title">
                Art palette
            </div>
        </a>
        <?php
            if ($row > 0) {
                echo '<div class="user">
                        <div class="dropdown">
                            <div class="menu">
                                <img src="images/img22.jpg" alt="">
                                <span>'.$username.'</span>
                            </div>

                            <div class="option">
                                <div><a href="index.php">Home</a></div>
                                <div><a href="profile.php">Profile</a></div>
                                <div><a href="logout.php">Sign out</a></div>
                            </div>
                        </div>
                      </div>';
            } else {
                echo '<a href="login.php" class="btn--login">Login</a>
                      <a href="signup.php" class="btn--signup">Sign up</a>';
            }
            ?>
    </header>

    <div class="wrapper">
        <section class="users-area">
            <div class="search-box">
                <div class="search-area">
                    <p class="title">Messages</p>
                    <div class="search">
                        <input type="text" placeholder="Enter name to search...">
                        <button><i class="fas fa-search"></i></button>
                    </div>
                </div>
                <div class="users-list"></div>
            </div>

            <div class="category">
                <span class="conversation">All conversation</span>
                <span class="archived">Archived</span>
                <span class="...">...</span>
            </div>

            <div class="people">
                <p class="title">PERSONAL</p>
                <div class="users-list"></div>
            </div>
            <div class="group">
                <p class="title">GROUP</p>
                <div class="users-list"></div>
            </div>
        </section>

        <section class="chat-area">
            <header>

                <?php
                    if (!isset($_GET['user_id'])) {

                    } else {
                        $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
                        $sql = mysqli_query($conn, "SELECT * FROM account WHERE id = {$user_id}");
                        if (mysqli_num_rows($sql) > 0) {
                            $row = mysqli_fetch_assoc($sql);
                        } else {
                            header("location: chat.php");
                        }
                    }
                ?>

                <img src="<?php if (isset($_GET['user_id'])) {
                                    echo $row['avatar'];
                                } else {echo "images/Arcane Jinx.jpg";}?> " alt="">
                <div class="details">
                    <span><?php if (isset($_GET['user_id'])) {
                                    echo $row['username'];
                                } else {echo "username";} ?></span>
                    <p><?php if (isset($_GET['user_id'])) {
                                    echo $row['status'];
                                } else {echo "no status";} ?></p>
                </div>
            </header>

            <div class="chat-box">
            </div>

            <form action="#" class="typing-area">
                <input type="text" class="incoming_id" name="incoming_id" value="<?php echo $user_id; ?>" hidden>
                <input type="text" name="message" class="input-field" placeholder="Type a message here..." autocomplete="off">
                <button><i class="fab fa-telegram-plane"></i></button>
            </form>
        </section>
        <section class="information-area">
            <header>
                <img src="<?php if (isset($_GET['user_id'])) {
                                    echo $row['avatar'];
                                } else {echo "images/Arcane Jinx.jpg";}?>" alt="">
                <span><?php if (isset($_GET['user_id'])) {
                                    echo $row['username'];
                                } else {echo "username";} ?></span>
            </header>
            <div class="documents">
                <p class="title">Photos</p>
                <div class="container">
                    <div class="images-row">
                        <img class="image" src="images/14 Destinations to Visit and See Gorgeous Spring Flowers.jpg" alt="">
                        <img class="image" src="images/17 Best Things To Do In Alberta, Canada.jpg" alt="">
                        <img class="image" src="images/18-Year-Old Creates Surreal Artworks to Express Emotions (1).jpg" alt="">
                    </div>
                    <div class="images-row">
                        <img class="image" src="images/190517091026-07-unusual-landscapes-travel.jpg" alt="">
                        <img class="image" src="images/30 Thought-Provoking Digital Illustrations That Expose The Flaws Of Our Modern Society.png" alt="">
                        <img class="image" src="images/65928972589b5.webp" alt="">
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script type="text/javascript" src="assets/js/users.js"></script>
    <script type="text/javascript" src="assets/js/chat.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
    let dropdown1 = document.getElementById('dropdown-1');
    dropdown1.onclick = function() {
        dropdown1.classList.toggle('active');
    }

    let dropdown2 = document.getElementById('dropdown-2');
    dropdown2.onclick = function() {
        dropdown2.classList.toggle('active');
    }
</script>
</body>
</html>