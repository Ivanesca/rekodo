<!DOCTYPE HTML>
<html>

<head>
    <title>Rekōdo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<head>

    {*    {include file="templates/head_nav.tpl"}*}

    {*    <div class="collapse" id="collapseExample">*}
    {*        {if $user_id < 0}*}
    {*            {include file="templates/about_unauthorize.tpl"}*}
    {*        {/if}*}
    {*        {if $user_role == 1}*}
    {*            {include file="templates/about_admin.tpl" username=$username}*}
    {*        {/if}*}
    {*        {if $user_role == 2}*}
    {*            {include file="templates/about_employee.tpl" username=$username}*}
    {*        {/if}*}
    {*        {if $user_role == 3}*}
    {*            {include file="templates/about_viewer.tpl" username=$username}*}
    {*        {/if}*}
    {*    </div>*}

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
                        <a href="" class="nav-link text-white" data-bs-toggle="modal"
                           data-bs-target="#exampleModalAuthor">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#table"/>
                            </svg>
                            Новый исполнитель
                        </a>

                    </li>
                    <li>
                        <a href="" class="nav-link text-white" data-bs-toggle="modal"
                           data-bs-target="#exampleModalGenre">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#table"/>
                            </svg>
                            Новый жанр
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="admin_index.php" class="nav-link bg-light text-dark" aria-current="page">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#home"/>
                            </svg>
                            Статистика
                        </a>
                    </li>
                </ul>
                <hr>

                <div>
                    <a href="#" class="nav-link px-2 text-white ms-4">В начало</a>
                </div>
                <hr>
                <div>
                    <a href="controller/log_out.php" class="nav-link px-2 text-white ms-4">Выйти</a>
                </div>
                <hr>
                <div>
                    <strong class="btn btn-light text-dark disabled w-100" data-bs-toggle="dropdown">{$username}
                        !</strong>
                </div>
            </div>
        </div>


        <div class="col-10 offset-2" id="main">

            <div class="album pt-4 mb bg-light">
                <div class="container">
                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-20">
                        {include file="templates/admin_author.tpl"
                        countries=$countries}
                        {include file="templates/admin_genre.tpl"}
                        <h2 class="fw-light text-center my-2 mx-auto">Альбомы исполнителей</h2>
                        <div class="container mt-2 w-100 text-center">
                            <img src="controller/get_stat.php">
                        </div>
                        <h2 class="fw-light text-center my-2 mx-auto">Пользователи</h2>
                        <div class="container mt-2 w-100">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Имя</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Пароль</th>
                                </tr>
                                </thead>
                                <tbody>
                                {foreach from=$users item=$user}
                                    <tr>
                                        <th scope="row">{$user.id}</th>
                                        <td>{$user.name}</td>
                                        <td>{$user.email}</td>
                                        <td>{$user.password}</td>
                                    </tr>
                                {/foreach}
                                </tbody>
                            </table>
                        </div>
                        <div class="container w-100">
                            <div class="row w-100">

                                <div class="col">
                                    <h2 class="fw-light text-center my-2">Жанры</h2>
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Жанр</th>
                                            <th scope="col">Действия</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        {foreach from=$genres item=$genre}
                                            <tr>
                                                <th scope="row">{$genre.id}</th>
                                                <td>{$genre.genre}</td>
                                                <td>
                                                    <form method="post" action="controller/genre_delete.php">
                                                        <input name="genre" value="{$genre.id}" class="d-none">
                                                        <button type="submit" class="btn btn-danger">Удалить</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        {/foreach}
                                        </tbody>
                                    </table>
                                </div>

                                <div class="col">
                                    <h2 class="fw-light text-center my-2">Исполнители</h2>
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Исполнитель</th>
                                            <th scope="col">Страна</th>
                                            <th scope="col">Действия</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        {foreach from=$authors item=$author}
                                            <tr>
                                                <th scope="row">{$author.id}</th>
                                                <td>{$author.name}</td>
                                                <td>{$author.country}</td>
                                                <td>
                                                    <form method="post" action="controller/author_delete.php">
                                                        <input name="author" value="{$author.id}" class="d-none">
                                                        <button type="submit" class="btn btn-danger">Удалить</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        {/foreach}
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
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