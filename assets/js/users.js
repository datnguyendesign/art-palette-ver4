const searchBar = document.querySelector(".search input"),
      searchIcon = document.querySelector(".search button"),
      usersList = document.querySelector(".users-list"),
      messageTitle = document.querySelector(".search-box .title")

searchIcon.onclick = () => {
    searchBar.classList.toggle("show");
    searchIcon.classList.toggle("active");
    messageTitle.classList.toggle("active");
    usersList.classList.remove("active");
    searchBar.focus();

    if (searchBar.classList.contains("active")) {
        searchBar.value = "";
        searchBar.classList.remove("active");
    }
}

searchBar.onkeyup = () => {
    let searchTerm = searchBar.value;
    if (searchTerm != "") {
        searchBar.classList.add("active");
        usersList.classList.add("active");
    } else {
        searchBar.classList.remove("active");
        usersList.classList.remove("active");
    }

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/search.php", true);
    xhr.withCredentials = true;
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                let data = xhr.response;
                usersList.innerHTML = data;
            }
        }
    }

    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send("searchTerm=" + searchTerm);
}

setInterval(() => {
    let xhr = new XMLHttpRequest();
    xhr.open("GET", "php/users.php", true);
    xhr.withCredentials = true;
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                let data = xhr.response;
                if (!searchBar.classList.contains("active")) {
                    usersList.innerHTML = data;
                }
            }
        }
    }
    xhr.send();
}, 500);

const conversationBar = document.querySelector(".category .conversation"),
      archivedBar = document.querySelector(".category .archived");

conversationBar.onclick = () => {
    conversationBar.classList.add("active");
    archivedBar.classList.remove("active");
}

archivedBar.onclick = () => {
    conversationBar.classList.remove("active");
    archivedBar.classList.add("active");
}