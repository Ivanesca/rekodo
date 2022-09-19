<!DOCTYPE HTML>
<html>

<head>
    <title>Rekōdo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="image/vinyl.ico" type="image/x-icon">
</head>

<head>



</head>
<body>

<div class="container-fluid">
    <div class="row">

        <div class="col-2 px-1 bg-dark position-fixed" id="sticky-sidebar">
            <div class="nav flex-column flex-nowrap vh-100 overflow-auto text-white p-2">
                <a href="index.php"
                   class="mx-4 d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor"
                         class="bi bi-vinyl mt-1" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                        <path d="M8 6a2 2 0 1 0 0 4 2 2 0 0 0 0-4zM4 8a4 4 0 1 1 8 0 4 4 0 0 1-8 0z"/>
                        <path d="M9 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                    </svg>
                    <span class="fs-4 mx-2">Rekōdo</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li>
                        <a href="collection.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#table"/>
                            </svg>
                            Edit collection
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="index.php" class="nav-link bg-light text-dark" aria-current="page">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#home"/>
                            </svg>
                            My vinyl
                        </a>
                    </li>
                    <li>
                        <a href="message.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#table"/>
                            </svg>
                            Inbox
                        </a>
                    </li>
                    <li>
                        <a href="sent_message.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#speedometer2"/>
                            </svg>
                            Sent
                        </a>
                    </li>
                    <li>
                        <a href="trade.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#speedometer2"/>
                            </svg>
                            Trade
                        </a>
                    </li>
                </ul>
                <hr>

                <div>
                    <a href="#" class="nav-link px-2 text-white ms-4">To begin</a>
                </div>
                <hr>
                <div>
                    <a href="controller/log_out.php" class="nav-link px-2 text-white ms-4">Log out</a>
                </div>
                <hr>
                <div>
                    <strong class="btn btn-light text-dark disabled w-100" data-bs-toggle="dropdown">Hey, {$username}!</strong>
                </div>
            </div>
        </div>


        <div class="col-10 offset-2" id="main">

            <div class="album pt-4 mb bg-light">
                <div class="container">
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-20">
                        {foreach from=$albums item=album}
                            <div class="col mt-1 mb-4 text-white">
                                <div class="card shadow-sm bg-dark">
                                    <img class="btn" data-bs-toggle="modal" data-bs-target="#aboutModel{$album.id}"
                                         src="{$album.cover}">
                                    <div class="card-body">
                                        <p class="card-text">{$album.name}</p>
                                        <hr>
                                        <p class="card-text">{$album.authors}</p>
                                        <hr>
                                        <p class="card-text">{$album.genres}</p>
                                        <hr>
                                        <p class="card-text">Condition: {$album.state}</p>
                                        <hr>
                                        {if ($album.sale)}
                                            <p class="card-text">For sale</p>
                                            {else}
                                            <p class="card-text">Not for sale</p>
                                        {/if}
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <button type="button"
                                                        data-bs-toggle="modal" data-bs-target="#Modal{$album.id}"
                                                        class="btn btn-sm btn-outline-secondary">Изменить статус
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {include file="templates/album_edit.tpl"
                            id=$album.id
                            name=$album.name}
                            {include file="templates/album_about.tpl"
                            id=$album.id
                            name=$album.name
                            authors=$album.authors
                            year=$album.year
                            genres=$album.genres
                            vinyl_count=$album.vinyl_count
                            sale=$album.sale
                            state=$album.state
                            vinyl_type=$album.type_name
                            about=$album.description}
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>

</body>
</html>